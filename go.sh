#!/bin/bash

echo hello dave :P
echo -------------------------------------

apt -y install ansible git

cd /opt/
git clone https://github.com/jgumbley/brewkong-hal.git

cd
crontab -l > .mycron.bak
echo "* * * * * echo hello > logger" >> .mycron.bak
crontab .mycron.bak

tail -f /var/log/syslog



