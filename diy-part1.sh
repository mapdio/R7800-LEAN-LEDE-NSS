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
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

svn export https://github.com/pymumu/luci-app-smartdns.git feeds/lucismartdns

 cd feeds/lucismartdns
 git config --global user.email "r7800@openwrt.com"
 git config --global user.name "r7800"
 git init
 git config --global init.defaultBranch lucismartdns
 git add .
 git commit -m "添加插件包 "

#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
