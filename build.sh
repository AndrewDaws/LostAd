#!/bin/bash
timestamp() {
  date +"%Y/%m/%d %H:%M:%S"
}
git pull
hostlist-compiler -c lostad_filter.json -o lostad_filter.txt
hostlist-compiler -c lostad_dns.json -o lostad_dns.txt
hostlist-compiler -c lostad.json -o lostad.txt
sed -i '/^$/d' lostad*.txt
echo -e "! Expires: 1 day\n$(cat lostad.txt)" > lostad.txt
echo -e "! Expires: 1 day\n$(cat lostad_dns.txt)" > lostad_dns.txt
echo -e "! Expires: 1 day\n$(cat lostad_filter.txt)" > lostad_filter.txt
echo -e "[Adblock Plus 2.0]\n$(cat lostad.txt)" > lostad.txt
echo -e "[Adblock Plus 2.0]\n$(cat lostad_filter.txt)" > lostad_filter.txt
git stage lost*
git commit -m "Build $(timestamp) UTC"
git push
