APPS     := debian hello
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
	cd build/root && \
	  find . | cpio --quiet -o -H newc > ../$(@F)

$(NEMU_DIR):
	git clone git@github.com:nju-mips/nemu-mips32 $@ -b M2

$(NEMU_MIPS32): $(NEMU_DIR)
	cd $<; make mips32r1_defconfig; make

$(APPS_DIR): %:
	-$(MAKE) -s -C $@ install

clean:
	-$(foreach app, $(APPS_DIR), $(MAKE) -s -C $(app) clean ;)
	-rm -rf $(OBJ_DIR)

run: $(IMAGE_CPIO_GZ) $(NEMU_MIPS32) 
	$(NEMU_MIPS32) -b -e binary/vmlinux \
	  --cmdline "console=ttyUL0,115200n8 lpj=20000 rd_start=0x82000000 rd_size=$(shell ls -l $< | awk '{print $$5}')B" \
	  --block-data ddr:0x2000000:$(IMAGE_CPIO_GZ)
