
include $(TOPDIR)/rules.mk

PKG_NAME:=wind-settings
PKG_VERSION:=0
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(INCLUDE_DIR)/package.mk

define Package/wind-settings
  SECTION:=luci
  CATEGORY:=LuCI
  TITLE:=LuCI support for Wind Settings
  PKGARCH:=all
  DEPENDS:=+luci-base +luci +luci-compat
endef

define Package/$(PKG_NAME)/description
	Language Support Packages.
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) ./files/$(PKG_NAME) $(1)/etc/uci-defaults/99-$(PKG_NAME)
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
