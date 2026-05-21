#!/usr/bin/env bash

# $@ means all argument passed as cli

for name in "$@"; do 
  ./hello.sh "$name"
done
