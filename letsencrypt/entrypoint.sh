#!/usr/bin/env bash

nginx

pwd

ls

./certbot-auto --nginx certonly --webroot -w /usr/share/nginx/html -d www.freightpilot.eu

ls