#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP (Hapus tanda # di awal baris dan ubah IP sesuai selera)
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default theme (Biarkan saja, ImmortalWrt sudah pakai Argon)
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname (Opsional, kalau mau ganti nama router)
sed -i 's/OpenWrt/KrstwnWRTx/g' package/base-files/files/bin/config_generate

# Add kiddin9 opkg repository
echo 'src/gz kiddin9 https://dl.openwrt.ai/latest/packages/x86_64/kiddin9' >> package/base-files/files/etc/opkg/customfeeds.conf
