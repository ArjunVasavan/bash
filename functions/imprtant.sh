#!/usr/bin/env bash

# $@ means all argument passed as cli

greet() {
  name=$1  # this is global use local for making it global 
  # local name=$1
  echo "hello $name" 
  return 5
}

for name in "$@"; do 
  greet "$name"
done

greet Napoleon

echo $?
