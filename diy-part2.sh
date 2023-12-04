#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#./scripts/feeds update helloworld
#./scripts/feeds install -a -f -p helloworld
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
./scripts/feeds update packages
rm -rf feeds/packages/lang/golang
svn co https://github.com/openwrt/packages/branches/openwrt-22.03/lang/golang feeds/packages/lang/golang
cd /workdir/openwrt/staging_dir/host/bin
ln -s /usr/bin/upx upx
ln -s /usr/bin/upx-ucl upx-ucl
ls -l upx*
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
