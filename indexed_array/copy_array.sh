#!/usr/bin/env bash

array_1=( foo bar baz)  # method 1 

array_2=( "${array_1[@]}" buddy guy )
# NOTE:  Making new array
# ( )  -> for showing Making an new array
# += we cann append element using +=

array_2+=(arjun vasavan)

for item in "${array_1[@]}"; do  # out put will be an single foo bar baz 
  echo "item 1 is $item"
done

echo "------"

for item in "${array_2[@]}"; do  # output will be foo first bar second baz third 
  echo "item 2 is $item"
done

