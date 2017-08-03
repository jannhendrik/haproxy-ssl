#!/usr/bin/env bash

echo $HAPROXY_PORT_80_TCP_ADDR " haproxy" >> /etc/hosts
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"

nginx

#./certbot-auto certonly --webroot -w /usr/share/nginx/html -d www.freightpilot.eu --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de
