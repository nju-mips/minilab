LINKS != cd link && ls

SYSROOT := /usr/mipsel-linux-gnu/lib
INSTALL_APPS := $(ROOTFS_HOME)/binary/ld-uClibc.so:/lib/ld-uClibc.so
INSTALL_APPS += $(ROOTFS_HOME)/binary/libuClibc.so:/lib/libuClibc.so
INSTALL_APPS += $(SYSROOT)/libc-2.27.so:/lib/libc.so.6
INSTALL_APPS += $(SYSROOT)/ld-2.27.so:/lib/ld.so.1
INSTALL_APPS += $(foreach lib,$(LINKS),link/$(lib):/lib/$(lib))
include $(ROOTFS_HOME)/Makefile.app
