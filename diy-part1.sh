#!/bin/bash
#
# OpenWrt DIY script part 1 (Before Update feeds)
#

# 可选：启用默认的部分 feed（根据你的 feeds.conf.default 而定）
sed -i '2s/^#//' feeds.conf.default
sed -i '3s/^/#/' feeds.conf.default

# 添加 luci-app-openclash（不走 feed，直接 clone）
git clone https://github.com/vernesong/OpenClash.git package/luci-app-openclash --depth=1

# 添加 luci-app-alist（Alist 网盘目录）
git clone -b lua https://github.com/sbwml/luci-app-alist package/alist

# 添加 luci-app-upnp（此插件已在 OpenWrt 官方 feeds 中，不需额外 feed）
# 后续在 menuconfig 中选择 Network > UPnP Support > luci-app-upnp
