DEBIAN_HOME := $(ROOTFS_HOME)/../../debian/rootfs

LIB_HOME := $(DEBIAN_HOME)/lib/mipsel-linux-gnu
INSTALL_APPS += link/init:/init
INSTALL_APPS += link/sh:/bin/sh
INSTALL_APPS += $(DEBIAN_HOME)/bin/bash:/bin/bash
INSTALL_APPS += $(DEBIAN_HOME)/bin/ls:/bin/ls
INSTALL_APPS += $(DEBIAN_HOME)/bin/pwd:/bin/pwd
INSTALL_APPS += $(DEBIAN_HOME)/bin/chmod:/bin/chmod
INSTALL_APPS += $(DEBIAN_HOME)/bin/chown:/bin/chown
INSTALL_APPS += $(DEBIAN_HOME)/bin/cp:/bin/cp
INSTALL_APPS += $(DEBIAN_HOME)/bin/ln:/bin/ln
INSTALL_APPS += $(DEBIAN_HOME)/bin/mount:/bin/mount
INSTALL_APPS += $(DEBIAN_HOME)/bin/cat:/bin/cat
INSTALL_APPS += $(DEBIAN_HOME)/usr/bin/vim.basic:/bin/vim
INSTALL_APPS += $(DEBIAN_HOME)/usr/bin/mipsel-linux-gnu-gcc-6:/bin/gcc
INSTALL_APPS += $(DEBIAN_HOME)/usr/lib/gcc/mipsel-linux-gnu/6/cc1:/bin/cc1

INSTALL_APPS += $(LIB_HOME)/ld-2.24.so:/lib/ld.so.1
INSTALL_APPS += $(LIB_HOME)/libtinfo.so.5.9:/lib/libtinfo.so.5
INSTALL_APPS += $(LIB_HOME)/libc-2.24.so:/lib/libc.so.6
INSTALL_APPS += $(LIB_HOME)/libdl-2.24.so:/lib/libdl.so.2
INSTALL_APPS += $(LIB_HOME)/libselinux.so.1:/lib/libselinux.so.1
INSTALL_APPS += $(LIB_HOME)/libpcre.so.3.13.3:/lib/libpcre.so.3
INSTALL_APPS += $(LIB_HOME)/libpthread-2.24.so:/lib/libpthread.so.0
INSTALL_APPS += $(LIB_HOME)/libm-2.24.so:/lib/libm.so.6
INSTALL_APPS += $(LIB_HOME)/libacl.so.1.1.0:/lib/libacl.so.1
INSTALL_APPS += $(LIB_HOME)/libattr.so.1.1.0:/lib/libattr.so.1
INSTALL_APPS += $(LIB_HOME)/libz.so.1.2.8:/lib/libz.so.1

USR_LIB_HOME := $(DEBIAN_HOME)/usr/lib/mipsel-linux-gnu
INSTALL_APPS += $(USR_LIB_HOME)/libgpm.so.2:/lib/libgpm.so.2
INSTALL_APPS += $(USR_LIB_HOME)/libisl.so.15.3.0:/lib/libisl.so.15
INSTALL_APPS += $(USR_LIB_HOME)/libmpc.so.3.0.0:/lib/libmpc.so.3
INSTALL_APPS += $(USR_LIB_HOME)/libmpfr.so.4.1.5:/lib/libmpfr.so.4
INSTALL_APPS += $(USR_LIB_HOME)/libgmp.so.10.3.2:/lib/libgmp.so.10

include $(ROOTFS_HOME)/Makefile.app
