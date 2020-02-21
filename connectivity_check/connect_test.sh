#!/bin/zsh

resolver = "172.31.10.11"

while read ip
do
  if nc -vzw5 "$ip" 22 > /dev/null 2>&1; then
    echo "Success! Can reach $ip"
  else
    echo "D'oh! Can't reach $ip"
  fi
done < hosts/target_ip_list.txt

while read host
do
  if nslookup "$host" "$resolver" > /dev/null; then
    echo "Success! Can resolve $host"
  else
    echo "D'oh! Can't resolve $host"
  fi
done < hosts/target_name_list.txt