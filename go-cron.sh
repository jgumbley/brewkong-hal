#!/bin/bash
exec 1> >(logger -s -t $(basename $0)) 2>&1

cd /opt/brewkong-hal/

git pull origin master

ansible all -i "localhost," -c local -m shell -a 'echo yo blair'

