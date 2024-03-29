/*
 *  ======== temperature.c ========
 */
#include <stdint.h>
#include <stddef.h>
#include <unistd.h>

/* POSIX Header files */
#include <pthread.h>
#include <semaphore.h>
#include <signal.h>
#include <time.h>

/* Driver Header files */
#include <ti/drivers/GPIO.h>
#include <ti/drivers/I2C.h>

/* Example/Board Header files */
#include "Board.h"

/*
 *  ======== HIGH_TEMP ========
 *  Send alert when this temperature (in Celsius) is exceeded
 */
#define HIGH_TEMP 30

/*
 *  ======== TMP Slave Address ========
 */
#define TMP006_ADDR     0x41
#define TMP007_ADDR     0x40
#define TMP116_ADDR     0x49

/*
 *  ======== TMP Registers ========
 *  The DIE register is valid for both TMP006 and TMP007
 *  The OBJ register is only valid for TMP007
 */
#define TMP_DIE_TEMP     0x0001  /* Die Temp Result Register */
#define TMP_OBJ_TEMP     0x0003  /* Object Temp Result Register */
#define TMP116_TEMP      0x0000  /* Die Temp Result Register for TMP116 */

/*
 *  The CC32xx LaunchPads contain an onboard TMP006 or TMP116 where you can
 *  get the DIE temperature.
 *  The Sensors BoosterPack contains a TMP007 where you can get
 *  DIE (TMP_DIE_TEMP) or OBJECT (TMP_OBJ_TEMP) temperature.
 *  We are using the OBJECT temperature for the TMP007 because it's cool!
 *  If you are on a CC32xx LaunchPad and want to use the Sensors
 *  BoosterPack, please remove the ONBOARD_TMP006 (or ONBOARD_TMP116) define
 *  from the compiler options.
 *
 *  Additionally: no calibration is being done on the TMPxxx device to simplify
 *  the example code.
 */
#if defined(ONBOARD_TMP006)
#define TMP_REGISTER TMP_DIE_TEMP
#define TMP_ADDR     TMP006_ADDR
#elif defined(ONBOARD_TMP116)
#define TMP_REGISTER TMP116_TEMP
#define TMP_ADDR     TMP116_ADDR
#else
#define TMP_REGISTER TMP_OBJ_TEMP
#define TMP_ADDR     TMP007_ADDR
#endif

#define SHT31_ADDR      0x44
#define SHT31_RE        0x2C  /* Die Temp Result Register */
#define SHT31_CLK_STR   0x06  /* Object Temp Result Register */


/* Temperature written by the temperature thread and read by console thread */
volatile float temperatureC;
volatile float temperatureF;

/* Mutex to protect the reading/writing of the temperature variables */
extern pthread_mutex_t temperatureMutex;

/*
 *  ======== clearAlert ========
 *  Clear the LED
 */
static void clearAlert(float temperature)
{
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_OFF);
}

/*
 *  ======== sendAlert ========
 *  Okay, just light a LED in this example, but with the SimpleLink SDK,
 *  you could send it out over the radio to something cool!
 */
static void sendAlert(float temperature)
{
    GPIO_write(Board_GPIO_LED0, Board_GPIO_LED_ON);
}

/*
 *  ======== postSem ========
 *  Function called when the timer (created in setupTimer) expires.
 */
static void postSem(union sigval val)
{
    sem_t *sem = (sem_t*)(val.sival_ptr);

    sem_post(sem);
}

/*
 *  ======== setupTimer ========
 *  Create a timer that will expire at the period specified by the
 *  time arguments. When the timer expires, the passed in semaphore
 *  will be posted by the postSem function.
 *
 *  A non-zero return indicates a failure.
 */
int setupTimer(sem_t *sem, timer_t *timerid, time_t sec, long nsec)
{
    struct sigevent   sev;
    struct itimerspec its;
    int               retc;

    retc = sem_init(sem, 0, 0);
    if (retc != 0) {
        return(retc);
    }

    /* Create the timer that wakes up the thread that will pend on the sem. */
    sev.sigev_notify = SIGEV_SIGNAL;
    sev.sigev_value.sival_ptr = sem;
    sev.sigev_notify_function = &postSem;
    sev.sigev_notify_attributes = NULL;
    retc = timer_create(CLOCK_MONOTONIC, &sev, timerid);
    if (retc != 0) {
        return(retc);
    }

    /* Set the timer to go off at the specified period */
    its.it_interval.tv_sec = sec;
    its.it_interval.tv_nsec = nsec;
    its.it_value.tv_sec = sec;
    its.it_value.tv_nsec = nsec;
    retc = timer_settime(*timerid, 0, &its, NULL);
    if (retc != 0) {
        timer_delete(*timerid);
        return(retc);
    }

    return(0);
}

//-----------------------------------------------------------------------------
static float SHT3X_CalcTemperature(uint16_t rawValue)
{
  // calculate temperature [��C]
  // T = -45 + 175 * rawValue / (2^16-1)
  return 175.0f * (float)rawValue / 65535.0f - 45.0f;
}

/*
 *  ======== temperatureThread ========
 *  This thread reads the temperature every second via I2C and sends an
 *  alert if it goes above HIGH_TEMP.
 */
void *temperatureThread(void *arg0)
{
    uint16_t        temperature;
//    uint16_t        humidity;

    uint8_t         txBuffer[2];
    uint8_t         rxBuffer[6];
    I2C_Handle      i2c;
    I2C_Params      i2cParams;
    I2C_Transaction i2cTransaction;
    sem_t           semTimer;
    timer_t         timerid;
    int             retc;

    /* Configure the LED pin */
    GPIO_setConfig(Board_GPIO_LED0, GPIO_CFG_OUT_STD | GPIO_CFG_OUT_LOW);

    /*
     *  Create/Open the I2C that talks to the TMP sensor
     */
    I2C_init();

    I2C_Params_init(&i2cParams);
    i2cParams.bitRate = I2C_400kHz;
    i2c = I2C_open(Board_I2C_TMP, &i2cParams);
    if (i2c == NULL) {
        while (1);
    }

    i2cTransaction.slaveAddress = SHT31_ADDR;
    i2cTransaction.writeBuf   = txBuffer;
    i2cTransaction.writeCount = 2;
    i2cTransaction.readBuf    = rxBuffer;
    i2cTransaction.readCount  = 0;

    /*
     *  The temperature thread blocks on the semTimer semaphore, which the
     *  timerId timer will post every second. The timer is created in the
     *  setupTimer function. It's returned so the thread could change the
     *  period or delete it if desired.
     */
    retc = setupTimer(&semTimer, &timerid, 1, 0);
    if (retc != 0) {
        while (1);
    }

    while (1) {
        txBuffer[0] = SHT31_RE;
        txBuffer[1] = SHT31_CLK_STR;
        i2cTransaction.writeCount = 2;
        i2cTransaction.readCount = 0;


        if (I2C_transfer(i2c, &i2cTransaction)) {
            usleep(2000);
        }

        i2cTransaction.writeCount = 0;
        i2cTransaction.readCount = 6;

        if (I2C_transfer(i2c, &i2cTransaction)) {
            /*
             *  Extract degrees C from the received data; see sensor datasheet.
             *  Make sure we are updating the global temperature variables
             *  in a thread-safe manner.
             */
            temperature = ((rxBuffer[0] << 8) | (rxBuffer[1]));
//            humidity = ((rxBuffer[3] << 8) | (rxBuffer[4]));

            pthread_mutex_lock(&temperatureMutex);
            temperatureC = SHT3X_CalcTemperature(temperature);
            temperatureF = temperatureC * 9 / 5 + 32;
            pthread_mutex_unlock(&temperatureMutex);

            /*  Send an alert if the temperature is too high!! */
            if ((int)temperatureC >= HIGH_TEMP) {
                sendAlert(temperatureC);
            }
            else {
                clearAlert(temperatureC);
            }
        }

        /* Block until the timer posts the semaphore. */
        retc = sem_wait(&semTimer);
        if (retc == -1) {
            while (1);
        }
    }
}
