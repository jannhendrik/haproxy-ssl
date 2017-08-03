#!/usr/bin/env bash

echo haproxy-dev.lan-dev.9b18fe1e.svc.dockerapp.io " haproxy" >> /etc/hosts

nginx

#./certbot-auto certonly --webroot -w /usr/share/nginx/html -d www.freightpilot.eu --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de
