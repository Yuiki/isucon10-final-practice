#!/bin/sh
git pull
cd ~/webapp/nodejs && npm install

sudo systemctl restart xsuportal-api-nodejs.service
sudo systemctl restart xsuportal-web-nodejs.service
