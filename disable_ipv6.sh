sudo echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
exit 0
or 
net.ipv6.conf.eth0.disable_ipv6 = 1
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
sysctl -p
