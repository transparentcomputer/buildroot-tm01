################################################################################
#
# miraclecast
#
################################################################################

MIRACLECAST_VERSION = a3cad1ccd55e7101db5e232ea59a45f3f98a33ac
MIRACLECAST_SITE = $(call github,transparentcomputer,miraclecast,$(MIRACLECAST_VERSION))
MIRACLECAST_LICENSE = LGPL-2.1+, GPL-2.0 (gdhcp)
MIRACLECAST_LICENSE_FILES = COPYING LICENSE_gdhcp LICENSE_htable LICENSE_lgpl
MIRACLECAST_DEPENDENCIES = host-pkgconf systemd gstreamer1 \
	readline libglib2
# Straight out the repository, no ./configure
MIRACLECAST_AUTORECONF = YES

define MIRACLECAST_INSTALL_DBUS_POLICY
	$(INSTALL) -m 0644 -D \
		$(@D)/res/org.freedesktop.miracle.conf \
		$(TARGET_DIR)/etc/dbus-1/system.d/org.freedesktop.miracle.conf
endef
MIRACLECAST_POST_INSTALL_TARGET_HOOKS += MIRACLECAST_INSTALL_DBUS_POLICY

$(eval $(autotools-package))
