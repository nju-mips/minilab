APPS     := etc hello
APPS_DIR := $(addprefix apps/, $(APPS))
OBJ_DIR  := build

NEMU_DIR      := ../nemu
NEMU_MIPS32   := $(NEMU_DIR)/build/nemu
IMAGE_CPIO    := $(OBJ_DIR)/rootfs.cpio
IMAGE_CPIO_GZ := $(IMAGE_CPIO).gz

.PHONY: image $(APPS_DIR) clean

export ROOTFS_HOME != pwd

image: $(IMAGE_CPIO_GZ)
$(IMAGE_CPIO_GZ): $(IMAGE_CPIO)
	gzip -9 -c -n $< > $@

$(IMAGE_CPIO): $(APPS_DIR)
	cd $(@D) && find . | cpio --quiet -o -H newc > $(@F)

$(NEMU_DIR):
	git clone git@github.com:nju-mips/nemu-mips32 $@

$(NEMU_MIPS32): $(NEMU_DIR)
	cd $< && make mips32r1_defconfig && make

$(APPS_DIR): %:
	-$(MAKE) -s -C $@ install

clean:
	-$(foreach app, $(APPS_DIR), $(MAKE) -s -C $(app) clean ;)
	-rm -rf $(OBJ_DIR)

run: $(IMAGE_CPIO_GZ) $(NEMU_MIPS32) 
	$(NEMU_MIPS32) -b -e binary/vmlinux --initramfs $<
