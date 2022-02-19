#!/usr/bin/env sh
# author: wangheng
# date: 2022-02-19

host_content=$(/usr/bin/curl -sL https://raw.githubusercontent.com/all4fun/hosts/main/nas.txt)

if [ -z "host_content" ]; then
    echo "get remote hosts failed..."
    exit 1
fi

echo $host_content > /etc/hosts.nas

/etc/init.d/dnsmasq restart

echo "dns update success.."