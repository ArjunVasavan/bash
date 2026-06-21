#!/usr/bin/env bash

a=2
b=2

if [[ $a == $b ]]; then
  echo "$a and $b are same"  # using "" helps in expanidng if spaces are there 
  echo 'a and b are same'  # using single quote will remove extra spaces 
fi

c=4
d=7

if [[ $c != $d ]]; then
  echo "c and d are not same"
fi

if [[ -f file.txt ]]; then
  echo "file.txt exist and its an file"
fi
