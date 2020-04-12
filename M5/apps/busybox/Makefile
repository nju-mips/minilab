APPLETS != cd applets && ls
INSTALL_APPS := $(foreach app,$(APPLETS),applets/$(app):/bin/$(app))
include $(ROOTFS_HOME)/Makefile.app
