#Add Custom Feeds
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default


mkdir -p package/custom
cd package/custom
git clone --depth=1 https://github.com/openwrt-develop/luci-theme-atmaterial
git clone --depth=1 https://github.com/tty228/luci-app-serverchan
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns
git clone --depth=1 -b 18.06  https://github.com/jerrykuku/luci-theme-argon
git clone --depth=1 https://github.com/vernesong/OpenClash
git clone --depth=1 https://github.com/Lienol/openwrt-package
git clone --depth=1 https://github.com/fw876/helloworld
git clone --depth=1 https://github.com/kenzok8/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small


git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon.git
git clone --depth=1 https://github.com/rosywrt/luci-theme-rosy.git
git clone --depth=1 https://github.com/sypopo/luci-theme-argon-mc.git
git clone --depth=1 https://github.com/apollo-ng/luci-theme-darkmatter.git

cd -
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=65535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
#修改默认网关
sed -i 's/192.168.1.1/172.16.1.1/g' package/base-files/files/bin/config_generate
#修改主机名
sed -i 's/OpenWrt/LEDE/g' package/base-files/files/bin/config_generate
#修改默认ssid
sed -i 's/OpenWrt/Chenmo/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
#
