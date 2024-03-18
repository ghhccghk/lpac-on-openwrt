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

PKG_MAINTAINER:=estkme-group (https://github.com/estkme-group/lpac)

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

$(eval $(call BuildPackage,lpac))

