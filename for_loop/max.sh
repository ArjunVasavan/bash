#!/bin/bash

for i in 1 2 3 4 5
do 
  echo "Number : $i"
done

max=10

# for i in {1..$max}; do 
#   echo "-> $i"
#done
# ↑ this doent work

for ((i = 0 ; i < max ; i++ )); do   # (()) double paranthesis is called math syntax here it can automatically derefer
  echo "Thing is $i"
done
