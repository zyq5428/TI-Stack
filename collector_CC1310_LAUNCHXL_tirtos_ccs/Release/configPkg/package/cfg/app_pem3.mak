#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M3{1,0,18.1,5
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/app_pem3.oem3.dep
package/cfg/app_pem3.oem3.dep: ;
endif

package/cfg/app_pem3.oem3: | .interfaces
package/cfg/app_pem3.oem3: package/cfg/app_pem3.c package/cfg/app_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c  -mv7M3 --code_state=16 --float_support=vfplib -me -O4 --opt_for_speed=0 --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/Services" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/LaunchPad" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/common" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/target" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HighLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/LowLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/util" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/src" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/tirtos/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/heapmgr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/aes" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/appasrt" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/fh" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/high_level" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/rom" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/tracer" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/driverlib" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC13X0_LAUNCHXL" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC1310_CC1190" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/cc26xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.5.LTS/include" --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=DeviceFamily_CC13X0 --define=SET_CCFG_BL_CONFIG_BL_LEVEL=0x00 --define=SET_CCFG_BL_CONFIG_BL_ENABLE=0xC5 --define=SET_CCFG_BL_CONFIG_BL_PIN_NUMBER=0x0D --define=SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE=0xC5 -g --c99 --plain_char=unsigned --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --common=on --fp_reassoc=off --sat_reassoc=off   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C   -mv7M3 --code_state=16 --float_support=vfplib -me -O4 --opt_for_speed=0 --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/Services" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/LaunchPad" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/common" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/target" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HighLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/LowLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/util" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/src" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/tirtos/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/heapmgr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/aes" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/appasrt" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/fh" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/high_level" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/rom" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/tracer" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/driverlib" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC13X0_LAUNCHXL" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC1310_CC1190" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/cc26xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.5.LTS/include" --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=DeviceFamily_CC13X0 --define=SET_CCFG_BL_CONFIG_BL_LEVEL=0x00 --define=SET_CCFG_BL_CONFIG_BL_ENABLE=0xC5 --define=SET_CCFG_BL_CONFIG_BL_PIN_NUMBER=0x0D --define=SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE=0xC5 -g --c99 --plain_char=unsigned --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --common=on --fp_reassoc=off --sat_reassoc=off   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_pem3.oem3: export C_DIR=
package/cfg/app_pem3.oem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/app_pem3.oem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

package/cfg/app_pem3.sem3: | .interfaces
package/cfg/app_pem3.sem3: package/cfg/app_pem3.c package/cfg/app_pem3.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem3 -n $< ...
	$(ti.targets.arm.elf.M3.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M3 --code_state=16 --float_support=vfplib -me -O4 --opt_for_speed=0 --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/Services" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/LaunchPad" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/common" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/target" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HighLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/LowLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/util" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/src" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/tirtos/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/heapmgr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/aes" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/appasrt" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/fh" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/high_level" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/rom" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/tracer" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/driverlib" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC13X0_LAUNCHXL" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC1310_CC1190" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/cc26xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.5.LTS/include" --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=DeviceFamily_CC13X0 --define=SET_CCFG_BL_CONFIG_BL_LEVEL=0x00 --define=SET_CCFG_BL_CONFIG_BL_ENABLE=0xC5 --define=SET_CCFG_BL_CONFIG_BL_PIN_NUMBER=0x0D --define=SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE=0xC5 -g --c99 --plain_char=unsigned --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --common=on --fp_reassoc=off --sat_reassoc=off   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem3 $< -C  -n -s --symdebug:none -mv7M3 --code_state=16 --float_support=vfplib -me -O4 --opt_for_speed=0 --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/Services" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/LaunchPad" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/common" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HAL/target" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/HighLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/MAC/LowLevel" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/osal_port" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/util" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/src" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/stack/tirtos/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/heapmgr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/hal/src/target/_common/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/osal/src/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/aes" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/appasrt" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/saddr" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/sdata" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/fh" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/high_level" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/rom" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/inc/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/tracer" --include_path="D:/workspace_v8/collector_CC1310_LAUNCHXL_tirtos_ccs/Application/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/apps/collector/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/inc" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/devices/cc13x0/driverlib" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC13X0_LAUNCHXL" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/common/boards/CC1310_CC1190" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/low_level/cc13xx/subg" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/ti154stack/services/src/nv/cc26xx" --include_path="D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source/ti/posix/ccs" --include_path="D:/ti/ccsv8/tools/compiler/ti-cgt-arm_18.1.5.LTS/include" --define=Board_EXCLUDE_NVS_EXTERNAL_FLASH --define=DeviceFamily_CC13X0 --define=SET_CCFG_BL_CONFIG_BL_LEVEL=0x00 --define=SET_CCFG_BL_CONFIG_BL_ENABLE=0xC5 --define=SET_CCFG_BL_CONFIG_BL_PIN_NUMBER=0x0D --define=SET_CCFG_BL_CONFIG_BOOTLOADER_ENABLE=0xC5 -g --c99 --plain_char=unsigned --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --embedded_constants=on --unaligned_access=on --enum_type=packed --wchar_t=16 --common=on --fp_reassoc=off --sat_reassoc=off   -qq -pdsw225 --endian=little -mv7M3 --abi=eabi -eo.oem3 -ea.sem3   -Dxdc_cfg__xheader__='"configPkg/package/cfg/app_pem3.h"'  -Dxdc_target_name__=M3 -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_18_1_5 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M3.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/app_pem3.sem3: export C_DIR=
package/cfg/app_pem3.sem3: PATH:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)
package/cfg/app_pem3.sem3: Path:=$(ti.targets.arm.elf.M3.rootDir)/bin/;$(PATH)

clean,em3 ::
	-$(RM) package/cfg/app_pem3.oem3
	-$(RM) package/cfg/app_pem3.sem3

app.pem3: package/cfg/app_pem3.oem3 package/cfg/app_pem3.mak

clean::
	-$(RM) package/cfg/app_pem3.mak
