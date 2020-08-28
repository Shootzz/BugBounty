#!/bin/bash

if [[ $1 == "-h" || $1 == "" ]]; then
        printf "\nUsage: ./domain_finder.sh example.com\n\n"
else
        curl -s https://api.recon.dev/search?domain=$1 -o domain_finder.txt
        sed -i 's/,/\n/g; s/}/\n/g; s/{//g; s/]//; s/\[//' domain_finder.txt
        cat domain_finder.txt
fi
