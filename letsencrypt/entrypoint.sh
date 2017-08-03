#!/usr/bin/env bash

echo $HAPROXY_DEV_1_PORT_443_TCP_ADDR " haproxy" >> /etc/hosts

nginx

#./certbot-auto certonly --webroot -w /usr/share/nginx/html -d www.freightpilot.eu --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de
