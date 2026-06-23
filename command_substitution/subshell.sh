#!/usr/bin/env bash

i=5

myfunc() {
  echo hi
  i=6  # local scope -> subshell 
}

thing=$(myfunc)  # this will run in a subshell 

echo "thing is $thing"

echo "i is $i"

myfunc

echo "i after myfunc is $i"
