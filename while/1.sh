#!/usr/bin/env bash
# you can put this square bracket to if or while  
while [[ -f 1.sh ]]; do   # -f -> file exist and its a regular file, -e -> just file exitst, -s -> file exist and its empty 
  echo "File exist"
  sleep 1
done
