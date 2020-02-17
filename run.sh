#!/bin/sh

sed -i "s/frps_ip/$FRPS_IP/" /etc/supervisord.conf
sed -i "s/f_domain/$DOMAIN/" /etc/supervisord.conf
sed -i "s/f_user/$USER/" /etc/supervisord.conf
sed -i "s/f_passwd/$PASSWD/" /etc/supervisord.conf
supervisord -c /etc/supervisord.conf
