#!/usr/bin/env bash

ping $HAPROXY_PORT_80_TCP_ADDR -c 5

echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy" >> /etc/hosts

# Generate certificates
./certbot-auto certonly --standalone -d www.freightpilot.eu --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de --staging

mkdir /ssl

cp fullchain.pem /ssl/fullchain.pem
cp privkey.pem /ssl/privkey.pem

ls
# Copy new certs and copy new nginx.conf

nginx