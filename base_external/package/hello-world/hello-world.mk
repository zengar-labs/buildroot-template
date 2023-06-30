################################################################################
#
# hello-world package
#
################################################################################

HELLO_WORLD_VERSION = 9570918f601fb2563ac762d8467487f521e24e14
HELLO_WORLD_SITE = 'https://github.com/delorean/back_to_future_project.git'
HELLO_WORLD_SITE_METHOD = git
# HELLO_WORLD_SITE_GIT_SUBMODULES = YES

define HELLO_WORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

#any binary or file you want to install on the target should be added to the below command
define HELLO_WORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/hello-world $(TARGET_DIR)/bin
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/hello-world/conf/
endef

$(eval $(generic-package))