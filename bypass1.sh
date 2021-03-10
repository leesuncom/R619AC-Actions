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
sed -i '$a src-git Whitestorys https://github.com/Aibx/openwrt-packages' feeds.conf.default

# 添加dnsfilter
git clone https://github.com/garypang13/luci-app-dnsfilter.git package/luci-app-dnsfilter

# 添加bypass
git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass

# 添加bypass 依赖
# svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns
# svn co https://github.com/garypang13/openwrt-packages/trunk/tcping
#svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb package/lua-maxminddb
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
