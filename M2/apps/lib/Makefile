LINKS != cd link && ls
INSTALL_APPS := $(ROOTFS_HOME)/binary/ld-uClibc.so:/lib/ld-uClibc.so
INSTALL_APPS += $(ROOTFS_HOME)/binary/libuClibc.so:/lib/libuClibc.so
INSTALL_APPS += $(foreach lib,$(LINKS),link/$(lib):/lib/$(lib))
include $(ROOTFS_HOME)/Makefile.app
