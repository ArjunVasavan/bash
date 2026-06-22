#!/usr/bin/env bash

# NOTE:  * -> stringify the array
# @ -> is for tokenize the array

array=(
  foo
  bar
  baz
  'hey there friend'
)

for item in "${array[*]}"; do  # out put will be an single foo bar baz 
  echo "item is $item"
done

for item in "${array[@]}"; do  # output will be foo first bar second baz third 
  echo "item is $item"
done

