APPLETS != cd applets && ls
INSTALL_APPS := $(foreach app,$(APPLETS),applets/$(app):/bin/$(app))
INSTALL_APPS += $(ROOTFS_HOME)/binary/busybox-static:/bin/busybox
include $(ROOTFS_HOME)/Makefile.app
