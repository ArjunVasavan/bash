#!/usr/bin/env bash

greet() (  # use ()  curly braces for function to create its own subshell
  name=$1
  echo "hello $name"
)

goodbye() {  # if you use {} it will create function on main shell 
  name=$1
  echo "goodbye $name"
}

if ! ( return 2> /dev/null); then
  greet arjun
  goodbye vasavan
fi
