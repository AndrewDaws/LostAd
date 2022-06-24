#!/bin/bash
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`
git pull
hostlist-compiler -c lostad.json -o lostad.txt
hostlist-compiler -c lostad_dns.json -o lostad_dns.txt
sed -i '/^$/d' lostad*.txt
git stage lost*
git commit -m "$(TIMESTAMP)"
git push