# subdomain-enum-script
Subdomain Enumeration Script (glorified sublist3r wrapper)

This script does subdomain enumeration via sublist3r. The script takes a txt file with a list of target base domains, runs sublist3r for them all, checks the enumerated subdomains for active IP addresses, then spits out a list of live hostnames (subdomain + base domain)
