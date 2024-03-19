# This software is in the public domain, furnished "as is", without technical
# support, and with no warranty, express or implied, as to its usefulness for
# any purpose.

include $(TOPDIR)/rules.mk

PKG_NAME:=lpac
PKG_RELEASE:=1.0.1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/estkme-group/lpac.git
PKG_SOURCE_VERSION:=04bd397ea45d8eb4a40da86ce096090ce9cdb64b
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=estkme-group (https://github.com/estkme-group)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/lpac
  SUBMENU:=esim support
  TITLE:=lpac is a cross platform local profile agent program.
  DEPENDS:=+libopenssl +pcscd +libpcsclite +libcurl
endef

define Package/lpac/description
    lpac is a cross platform local profile agent program.
    Features:
    1.Support Activate Code and Confirm Code
    2.Support custom IMEI sent to server
    3.Support Profile Discovery (SM-DS)
    4.Profile management: list, enable, disable, delete and nickname
    5.Notification management: list, send and delete
    6.Lookup eUICC chip info
    7.etc
endef

define Package/lpac/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_DIR) $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/libapduinterface_at.so $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/libapduinterface_pcsc.so $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/libapduinterface_stdio.so $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/libhttpinterface_curl.so $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/libhttpinterface_stdio.so $(1)/usr/lib
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/output/lpac $(1)/usr/bin
endef


$(eval $(call BuildPackage,lpac))

