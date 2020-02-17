#!/bin/sh

sed -i "s/frps_ip/$FRPS_IP/" /etc/supervisord.conf
sed -i "s/f_domain/$DOMAIN/" /etc/supervisord.conf
sed -i "s/f_user/$USER/" /etc/supervisord.conf
sed -i "s/f_passwd/$PASSWD/" /etc/supervisord.conf
supervisord -c /etc/supervisord.conf
node /home/theia/src-gen/backend/main.js /home/project --hostname=0.0.0.0
/home/frp/frp_0.31.2_linux_amd64/frpc -c /home/frp/frpc.ini
