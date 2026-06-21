#!/usr/bin/env bash

hello() {  # hello is an function 
	local s=$1  # function called hello will take only one argument and we are calling it s which is local for this fucntion only 
	echo "hello $s!"  # then we are printing it 
}

goodbye() {  # another function goodbye 
	local s=$1 # function called goodbye will take only one argument and we are calling it s which is local for this fucntion only 
	echo "goodbye $s!" # then we are printing it 
}

  # (( content ))  -> this expression is used for doing math equations you can use logical bitwise modular all here
  # as its an math expression we dont have to use $ to take out value

if (($# == 0)); then  # $# -> how many arguments user have given, this checks if user havent give any input show error 
  echo 'name required!' >&2  # >&2 -> redirecting to file descriptor 2 which means stderr ( & -> means file descriptor )
	exit 1  # exit with return value 1 when you use echo $? -> it shows 1 
fi

for name in "$@"; do  # $@ -> its an array version so we can loop over program 
	if [[ $name == d* ]]; then  # d* -> here we are chacking if input starts with d, * -> its an wildcard operation wildcard should not e quoted 
		hello "$name"
	elif [[ $name == b* ]]; then  # b* -> if name starts with b 
		hello "$name"
	else
		goodbye "$name"
	fi
done
