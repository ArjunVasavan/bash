#!/usr/bin/env bash

my_func() {
  echo "This goes to stdout" >&1
  echo "This goes to stderr" >&2
}

var=$(my_func)
code=$?

echo "Output : $var, Code : $code"
