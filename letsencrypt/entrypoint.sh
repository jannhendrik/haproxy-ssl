#!/usr/bin/env bash

ping $HAPROXY_PORT_80_TCP_ADDR -c 5

echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy" >> /etc/hosts

./certbot-auto certonly --standalone -d www.freightpilot.eu

ls
# Copy new certs and copy new nginx.conf


nginx