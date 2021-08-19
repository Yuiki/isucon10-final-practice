#!/bin/sh
sudo truncate -s 0 -c /var/log/envoy/access.log

git pull
cd ~/webapp/nodejs && npm install

sudo systemctl restart envoy

sudo systemctl restart xsuportal-api-nodejs.service
sudo systemctl restart xsuportal-web-nodejs.service
