.PHONY: image $(APPS_DIR) clean

APPS     := etc hello
APPS_DIR := $(addprefix apps/, $(APPS))
OBJ_DIR  := build

NEMU_MIPS32   := nemu/build/nemu
IMAGE_CPIO    := build/rootfs.cpio
IMAGE_CPIO_GZ := $(IMAGE_CPIO).gz

export ROOTFS_HOME != pwd

image: $(IMAGE_CPIO_GZ)
$(IMAGE_CPIO_GZ): $(IMAGE_CPIO)
	gzip -9 -c -n $< > $@

$(IMAGE_CPIO): $(APPS_DIR)
	cd $(@D) && find . | cpio --quiet -o -H newc > $(@F)

nemu:
	git clone git@github.com:nju-mips/nemu-mips32 nemu -b M2

$(NEMU_MIPS32): nemu
	cd $(<D) && make mips32r1_defconfig && make

$(APPS_DIR): %:
	-$(MAKE) -s -C $@ install

clean:
	-$(foreach app, $(APPS_DIR), $(MAKE) -s -C $(app) clean ;)
	-rm -f build/*

run: $(IMAGE) $(NEMU_MIPS32) 
	$(NEMU_MIPS32) -b -e binary/vmlinux --initramfs $<
