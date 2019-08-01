# invoke SourceDir generated makefile for app.pem3
app.pem3: .libraries,app.pem3
.libraries,app.pem3: package/cfg/app_pem3.xdl
	$(MAKE) -f D:\workspace_v8\collector_CC1310_LAUNCHXL_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f D:\workspace_v8\collector_CC1310_LAUNCHXL_tirtos_ccs/src/makefile.libs clean

