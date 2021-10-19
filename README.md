# subdomain-enum-script
Subdomain Enumeration Script (glorified sublist3r wrapper)

Script to do subdomain enumeration via sublist3r. Script takes txt file with list of target base domains, runs sublist3r for them all, checks the enumerated subdomains for active IP addresses, then spits out a list of live hostnames (subdomain + base domain)
