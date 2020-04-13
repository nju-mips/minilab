ifeq ($(ROOTFS_HOME),)
$(error ROOTFS_HOME is not defined)
endif

ifeq ($(INSTALL_APPS),)
$(error INSTALL_APPS is not defined)
endif

define install_target
$(ROOTFS_HOME)/build/root/$(lastword $(subst :, ,$1))
endef

define make_install
$(call install_target,$1): $(firstword $(subst :, ,$1))
	mkdir -p $$(@D)
	cp -d $$< $$@
endef

$(foreach app,$(INSTALL_APPS),$(eval $(call make_install,$(app))))

.PHONY: install clean

install: $(foreach app,$(INSTALL_APPS),$(call install_target,$(app)))

clean: ;
