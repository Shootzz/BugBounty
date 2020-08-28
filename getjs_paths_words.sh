#!/bin/bash

if [ -z "$1" ]; then
	echo " - Give the url to grab jspaths and create wordlist"
else
	hakrawler -url $1 -js -depth 1 -plain > jspaths
	for name in $(cat jspaths); do python3 /root/opt/getjswords.py $name | sort -u |tee -a jswordlist ;done
fi
