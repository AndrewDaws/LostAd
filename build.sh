#!/bin/bash
timestamp() {
  date +"%Y/%m/%d %H:%M:%S"
}
git pull
hostlist-compiler -c lostad.json -o lostad.txt
hostlist-compiler -c lostad_dns.json -o lostad_dns.txt
sed -i '/^$/d' lostad*.txt
git stage lost*
git commit -m "Build $(timestamp)"
git push