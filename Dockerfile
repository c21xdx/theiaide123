FROM theiaide/theia-go:latest

USER root

ADD run.sh /run.sh

RUN apt-get update && apt-get install -y sudo vim && chmod +x /run.sh && mkdir /home/frp && \
cd /home/frp && wget https://github.com/fatedier/frp/releases/download/v0.31.2/frp_0.31.2_linux_amd64.tar.gz && \
tar -zxvf frp_0.31.2_linux_amd64.tar.gz && rm -rf frp_0.31.2_linux_amd64.tar.gz && \
apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

ADD frpc.ini /home/frp

ENTRYPOINT ["/run.sh"]
