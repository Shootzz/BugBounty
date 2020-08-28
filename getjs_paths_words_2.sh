#!/bin/bash

if [ -z "$1" ]; then
	echo " - Give the url to grab jspaths and create wordlist"
else
	echo $1 | gau | grep '\.js$' | httpx -status-code -mc 200 -content-type -silent | grep 'application/javascript' | cut -d "[" -f1 > jspaths2
	for name in $(cat jspaths2); do python3 /root/opt/getjswords.py $name | sort -u |tee -a jswordlist2 ;done
fi
