#!/usr/bin/env bash

myfunc() {
  echo hi
}

thing=$(myfunc)  # this will run in a subshell 

echo "thing is $thing"
