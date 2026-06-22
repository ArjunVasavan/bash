#!/usr/bin/env bash

# NOTE:  * -> stringify the array
# @ -> is for tokenize the array

array_1=( foo bar baz)  # method 1 

declare -a array_2=( foo boo bee)  # making indexed array 


for item in "${array_1[*]}"; do  # out put will be an single foo bar baz 
  echo "item is $item"
done

for item in "${array_1[@]}"; do  # output will be foo first bar second baz third 
  echo "item is $item"
done

