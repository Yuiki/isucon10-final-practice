#!/bin/sh
git pull
cd ~/webapp/nodejs && /home/isucon/local/nodejs/bin/npm install

sudo systemctl restart xsuportal-api-nodejs.service
sudo systemctl restart xsuportal-web-nodejs.service
