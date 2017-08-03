#!/usr/bin/env bash

ping $HAPROXY_PORT_80_TCP_ADDR -c 5

echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy" >> /etc/hosts

nginx

./certbot-auto certonly --webroot -w /usr/share/nginx/html -d www.freightpilot.eu --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de


nginx stop

ls

nginx