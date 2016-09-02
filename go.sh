#!/bin/bash

echo hello dave :P
echo -------------------------------------

apt update
apt -y install ansible git

rm /opt/brewkong-hal/
cd /opt/
git clone https://github.com/jgumbley/brewkong-hal.git


cd
crontab -l > .mycron.bak
echo "* * * * * /opt/brewkong-hal/go-cron.sh" >> .mycron.bak
crontab .mycron.bak

tail -f /var/log/syslog



