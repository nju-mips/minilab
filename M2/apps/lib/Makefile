LINKS != cd link && ls

SYSROOT := /usr/mipsel-linux-gnu/lib
INSTALL_APPS += $(SYSROOT)/libc-2.27.so:/lib/libc.so.6
INSTALL_APPS += $(SYSROOT)/ld-2.27.so:/lib/ld.so.1
include $(ROOTFS_HOME)/Makefile.app
