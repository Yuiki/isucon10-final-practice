#!/bin/sh
sudo truncate -s 0 -c /var/log/mysql/mysql-slow.log

git pull
cd ~/webapp/nodejs && /home/isucon/local/nodejs/bin/npm install

sudo systemctl restart mysql

sudo systemctl restart xsuportal-api-nodejs.service
sudo systemctl restart xsuportal-web-nodejs.service
