#!/bin/sh

sed -i "s/frps_ip/$FRPS_IP/" /home/frp/frpc.ini
sed -i "s/frps_port/$FRPS_PORT/" /home/frp/frpc.ini
sed -i "s/f_domain/$DOMAIN/" /home/frp/frpc.ini
sed -i "s/f_user/$USER/" /home/frp/frpc.ini
sed -i "s/f_passwd/$PASSWD/" /home/frp/frpc.ini
supervisord -c /etc/supervisord.conf
