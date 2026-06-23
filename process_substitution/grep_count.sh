#!/usr/bin/env bash

echo "Total count using grep inbuilt -c is: $(grep -c a /home/arjun/system_learning/bash/readme.md)"

# use -c in grep to count 

words=$(grep a /home/arjun/system_learning/bash/readme.md)  # this is stored in RAM 

i=0

while read -r word; do
  ((i++))
done <<< "$words"  # <<< -> here string its like an pipe where we are telling to read from here 

echo "found $i words using code"
