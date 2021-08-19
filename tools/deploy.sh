#!/bin/sh
ssh isucon@18.180.143.23 "cd ~/webapp && sh ./tools/deploy-isu1.sh" &
ssh isucon@18.180.183.14 "cd ~/webapp && sh ./tools/deploy-isu1.sh" &
ssh isucon@35.75.239.115 "cd ~/webapp && sh ./tools/deploy-isu1.sh" &
