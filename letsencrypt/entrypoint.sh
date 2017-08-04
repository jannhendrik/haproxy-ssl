#!/usr/bin/env bash

ping $HAPROXY_PORT_80_TCP_ADDR -c 5

echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy"
echo $HAPROXY_PORT_80_TCP_ADDR " haproxy" >> /etc/hosts

#Generate DH Parameters
rm -rf /dhparam
mkdir /dhparam

openssl dhparam 2048 -out /dhparam/dhparam.pem

# Generate certificates
./certbot-auto certonly --standalone -d www.freightpilot.eu -d freightpilot.eu -d www.freightpilot.de -d freightpilot.de --noninteractive --agree-tos --email jan.hendrik.telke@freightpilot.de --staging

nginx