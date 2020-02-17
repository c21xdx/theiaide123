#!/bin/sh

node /home/theia/src-gen/backend/main.js /home/project --hostname=0.0.0.0
/home/frp/frp_0.31.2_linux_amd64/frpc -c /home/frp/frpc.ini
