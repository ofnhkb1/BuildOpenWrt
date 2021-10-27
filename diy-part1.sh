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
