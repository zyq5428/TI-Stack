#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source;D:/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages
override XDCROOT = D:/ti/xdctools_3_51_01_18_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = D:/ti/simplelink_cc13x0_sdk_3_20_00_23/source;D:/ti/simplelink_cc13x0_sdk_3_20_00_23/kernel/tirtos/packages;D:/ti/xdctools_3_51_01_18_core/packages;..
HOSTOS = Windows
endif
