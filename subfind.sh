#!/bin/bash

if [ -z "$1" ]; then
	printf " --- Give the address as an argument\n For example: example.com\n"
else
        subfinder -d $1 -o subfinder_out
	assetfinder $1 > assetfinder_out
	python3 /root/opt/Sublist3r/sublist3r.py -d $1 -o sublister_out
	cat subfinder_out assetfinder_out sublister_out | sort -u > domains.txt
	rm assetfinder_out subfinder_out sublister_out
fi
