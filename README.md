# openwrt-sh
自用OpenWrt一些脚本的备份

auto-update-trackers.sh 更新aria2 trackers

auto-upgrade-geo.sh 更新v2ray geosite及geoip
来源https://github.com/Loyalsoldier/v2ray-rules-dat
保存目标geositeplus.dat;geoipplus.dat
v2ray使用外部规则文件

auto-upgrade.sh 更新软件包

v2ray-watchdog.sh 检测网络情况以重启v2ray
通过ping www.google.com 及 ping www.baidu.com 来判断
