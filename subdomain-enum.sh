if [ -z "$1" ]; then echo "Usage: ./subdomain-enum.sh target-domains.txt"; else 
for d in $(cat $1 ); do sublist3r -d $d -o $d.txt ; cat $d.txt >> enum.txt ; rm $d.txt;done 
for i in $(cat enum.txt ); do host $i | grep 'alias\|address' | grep -v IPv6 | cut -d " " -f 1,4,6 | sed 's/alias\s//g' | tr ' ' '\|' >> enum2.txt;done
cat enum2.txt | sort | uniq >> live-hosts.txt
rm enum.txt
rm enum2.txt
fi
