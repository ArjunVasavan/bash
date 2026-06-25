#!/usr/bin/env bash

my_source() {
  source -p ./lib "$1"
}


my_source greetings || exit 1 # inspite of source you can just write " . ./lib/greetings "

greet arjun
greet vasavan
goodbye buddy
