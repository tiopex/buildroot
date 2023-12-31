################################################################################
#
# umtprd
#
################################################################################
UMTPRD_VERSION = f5b3c9c2010d221bf137adedbaba1cace709956d
UMTPRD_SITE_METHOD = git
UMTPRD_SITE = https://github.com/viveris/uMTP-Responder.git
UMTPRD_LICENSE = GPL-3.0+
UMTPRD_LICENSE_FILES = LICENSE

define UMTPRD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define UMTPRD_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/umtprd $(TARGET_DIR)/usr/sbin/umtprd
endef

$(eval $(generic-package))
