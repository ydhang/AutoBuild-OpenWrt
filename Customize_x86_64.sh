#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Modify the Compiler
sed -i 's/R22.2.2/R22.2.2 Compiled by ydhang/g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. Change the default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' openwrt/feeds/luci/collections/luci/Makefile

#5. Install JerryKuKu’s new Argon
rm -rf openwrt/package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git openwrt/package/lean/luci-theme-argon

#6. Install Luci-theme-neobird
rm -rf openwrt/package/luci-theme-neobird && git clone https://github.com/thinktip/luci-theme-neobird.git openwrt/package/lean/luci-theme-neobird
sed -i 's/shadowsocksr/passwall/g' openwrt/package/lean/luci-theme-neobird/luasrc/view/themes/neobird/header.htm

