if [ -z "$1" ]; then echo "Need to supply target domain file--./subdomain-enum.sh target-domain.txt"; else 
for d in $(cat $1 ); do sublist3r -d $d -o $d.txt ; cat $d.txt >> enum.txt ; rm $d.txt;done 
for i in $(cat enum.txt ); do host $i | grep address | cut -d " " -f 1 | sort | uniq >> live-hostnames.txt;done
rm enum.txt
fi
