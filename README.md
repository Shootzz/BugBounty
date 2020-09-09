# BugBounty
Automation of some bug bounty tools for my personal use.
Below, you can find the short documentation and requirements of each tools.

- Give an argument to run the scripts. Example: ./script_name.sh example.com or -h

## massub_finder.sh
Combination of domain enumeration tools including amass with asn number enumeration. It requires you to configure your own amass config file with API keys. If you don't put your API keys, you will get less results.

Required Tools to run the script:
- Amass
- Sublist3r.py
- Assetfinder
- subfinder

## domain_finder.sh
This shell script that I've written is calling an API from "https://api.recon.dev" to find sub-domains of given domain.
https://api.recon.dev is being hosted by Nahamsec


## getjs_paths_words.sh
Combination of useful one-liner commands to gather js paths then use it to create a wordlist for further enumeration.

Required Tools to run the script:
- hakrawler
- getjswords.py

## getjs_paths_words_2.sh (I use this one lately)
Combination of useful one-liner commands to gather js paths then use it to create a wordlist for further enumeration. You can use both getjs_paths_words script to get output then sort unique to have more results.

Required Tools to run the script: 
- gau
- getjswords.py
- httpx

## subfinder.sh
The script is using three different sub-domain enumeration tool, saves the output of both tool and sort as unique to give you more results about sub-domains. 

Note: It has absolute path for Subilst3r.py which is /root/opt/ directory, if you are using different path to store your tools then don't forget to change it.

Required Tools to run the script:
- Sublist3r.py
- Assetfinder
- subfinder

## rapiddns.sh
API calls to https://rapiddns.io with the given domain name such as example.com

## xsstest.sh
Another useful one-liner to find all URL from the domain and put "xss" word to potential vulnerable parameters.

Usage : Give a file as an argument such as, ./xsstest.sh domain.txt

Required Tools to run the script:
- gau
