#!/bin/bash
timestamp() {
  date +"%Y/%m/%d %H:%M:%S"
}
git pull
hostlist-compiler -c lostad.json -o lostad.txt
hostlist-compiler -c lostad_dns.json -o lostad_dns.txt
sed -i '/^$/d' lostad*.txt
echo -e "[Adblock Plus 2.0]\n$(cat lostad.txt)" > lostad.txt
git stage lost*
git commit -m "Build $(timestamp) UTC"
git push
