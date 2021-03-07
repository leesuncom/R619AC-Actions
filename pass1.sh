#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git Whitestorys https://github.com/Aibx/openwrt-packages' feeds.conf.default
#svn co https://github.com/kenzok8/openwrt-packages/tree/master/lua-maxminddb package/lua-maxminddb
# rm -rf package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon package/lean/luci-theme-argon
# git clone https://github.com/jerrykuku/luci-app-argon-config package/lean/luci-app-argon-config

# cd package
# git clone https://github.com/kenzok8/openwrt-packages.git
# git clone https://github.com/kenzok8/small.git
# 添加dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter
