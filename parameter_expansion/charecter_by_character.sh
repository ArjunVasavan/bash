#!/usr/bin/env bash

s='arjun vasavan'
len=${#s}

for (( i = 0; i < len; i++)); do
  c=${s:i:1}
  echo "character: $c"
done
