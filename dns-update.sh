#!/usr/bin/env sh
# author: wangheng
# date: 2022-02-19

wget https://raw.githubusercontent.com/all4fun/hosts/main/nas.txt -O /tmp/hosts.nas
host_content=`cat /tmp/hosts.nas`

if [ -z "host_content" ]; then
    echo "get remote hosts failed..."
    exit 1
fi

mv -f /tmp/hosts.nas /etc/hosts.nas

/etc/init.d/dnsmasq restart

echo "dns update success.."