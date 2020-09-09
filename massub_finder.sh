#!/bin/bash

# Github: github.com/Shootzz
# Change the relative paths to your own paths.

if [[ $1 == "-h" || $1 == "" || $2 == "" ]]; then
        printf "\nUsage: ./massub_finder.sh example.com OrganisationName\n\n"
else
	org_name=$2
	org_name=${org_name^^}
	config_path="$HOME/.config/amass/config.ini"
	sublist3r_path="$HOME/opt/Sublist3r/sublist3r.py"

	subfinder -d $1 -o subfinder_out
        assetfinder $1 > assetfinder_out
        python3 $sublist3r_path -d $1 -o sublister_out

        sort -u subfinder_out assetfinder_out sublister_out -o domains_finder.txt
        rm assetfinder_out subfinder_out sublister_out

	amass enum -d $1 -config $config_path -o amass_domain.txt
	asn_no=$(amass intel -org $org_name | grep -w "$org_name" | cut -d "," -f1)

	if [[ $asn_no != "" ]]; then
		amass intel -asn $asn_no -whois -d $1 -o asn_domain.txt
		sort -u amass_domain.txt asn_domain.txt domains_finder.txt -o domains.txt
                rm asn_domain.txt amass_domain.txt domains_finder.txt
	else
		sort -u domains_finder.txt amass_domain.txt -o domains.txt
		rm domains_finder.txt amass_domain.txt
	fi
fi
