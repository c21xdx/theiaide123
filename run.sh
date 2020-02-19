#!/bin/sh

sed -i "s/cf_domain/$CF_DOMAIN/" /home/frp/frpc.ini
sed -i "s/f_token/$F_TOKEN/" /home/frp/frpc.ini
sed -i "s/f_user/$USER/" /home/frp/frpc.ini
sed -i "s/f_passwd/$PASSWD/" /home/frp/frpc.ini
supervisord -c /etc/supervisord.conf
