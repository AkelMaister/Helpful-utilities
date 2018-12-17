#!/bin/bash

re='^[0-9a-ZA-Z]+$'

while read line; do
  printf "\n"
  for (( i=0; $i<${#line}; i=$(($i+1)) )); do
    s=${line:$i:1}
    if [[ $s =~ $re ]]; then
      s=$(cat /dev/urandom | tr -dc 'a-fA-F0-9' | fold -w 1 | head -n 1)
    fi
    printf "$s"
  done
done < $1
