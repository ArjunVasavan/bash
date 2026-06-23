#!/usr/bin/env bash

i=0

grep a /home/arjun/system_learning/bash/readme.md | while read -r word; do
  ((i+=1))
  echo "inside of subshell i is : $i"
done

echo "outside of subshell i is: $i"

  # to remove this we use process substitution 
