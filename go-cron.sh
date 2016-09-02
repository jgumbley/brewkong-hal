#!/bin/bash
exec 1> >(logger -s -t $(basename $0)) 2>&1

cd /opt/brewkong-hal/
git pull origin master

apt -y install ansible cowsay
cowsay yo
