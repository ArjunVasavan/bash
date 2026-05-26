#!/usr/bin/env bash

hello() {
  local s=$1
  echo "hello $s!"
}

goodbye() {
  local s=$1
  echo "goodbye $s!"
}

if (( $# == 0 )); then  # this (())  is for doing arithmetic math expression
  echo 'name required!' >&2  # >&2 this means we are redirecting to file descriptor 2 | stderr is 2
  exit 1
fi

for name in "$@"; do   # $@ is the array of arguments we give 
  if [[ $name == d* ]]; then
    hello "$name"
  elif [[ $name == b* ]]; then
    hello "$name"
  else 
    goodbye "$name"
  fi
done
