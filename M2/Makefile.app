ifeq ($(ROOTFS_HOME),)
$(error ROOTFS_HOME is not defined)
endif

ifeq ($(INSTALL_APPS),)
$(error INSTALL_APPS is not defined)
endif

define make_install
$(ROOTFS_HOME)/build/$(lastword $(subst :, ,$1)): $(firstword $(subst :, ,$1))
	mkdir -p $$(@D)
	cp $$< $$@
endef

$(foreach app,$(INSTALL_APPS),$(eval $(call make_install,$(app))))

.PHONY: install clean

install: $(foreach app,$(INSTALL_APPS),$(ROOTFS_HOME)/build/$(lastword $(subst :, ,$(app))))

clean: ;
