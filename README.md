# BugBounty
Automation of some bug bounty tools for my personal use.
Below, you can find the short documentation and requirements of each tools.

## API-Recon-Dev-Domain
This shell script that I've written is calling an API from "https://api.recon.dev" to find sub-domains of given domain.
https://api.recon.dev is being hosted by Nahamsec

## getjs_paths_words.sh
Combination of useful one-liner commands to gather js paths then use it to create a wordlist for further enumeration.

Requirement tools: 
- hakrawler
- getjswords.py

## getjs_paths_words_2.sh (I use this one lately)
Combination of useful one-liner commands to gather js paths then use it to create a wordlist for further enumeration. You can use both getjs_paths_words script to get output then sort unique to have more results.

Requirement tools: 
- gau
- getjswords.py

## subfinder.sh
The script is using two different sub-domain enumeration tool, saves the output of both tool and sort as unique to give you more results about sub-domains. 

Note: It has absolute path for Subilst3r.py which is /root/opt/ directory, if you are using different path to store your tools then don't forget to change it.

Requirement tools:
- Sublist3r.py
- Assetfinder
