APPLETS != cd applets && ls
INSTALL_APPS := $(ROOTFS_HOME)/binary/busybox-static:/bin/busybox
INSTALL_APPS += $(foreach app,$(APPLETS),applets/$(app):/bin/$(app))
include $(ROOTFS_HOME)/Makefile.app
