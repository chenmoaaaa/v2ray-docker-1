#! /bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
sudo su
sed -i "s/UserUUID/${UUID}/g" "/v2ray/config.json"
nohup /v2ray/v2ray --config=/v2ray/config.json > /dev/null 2>&1 &