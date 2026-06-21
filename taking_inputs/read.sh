#!/usr/bin/env bash
if [[ -n $1 ]]; then
  name=$1
else
  read -p 'Enter Your Name: '  name
fi

echo "Hello $name"
