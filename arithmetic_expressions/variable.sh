#!/usr/bin/env bash

a=2
b=3
echo $((a+b))

i=0
((i++))
echo "post incr: $i"

i=1
((i*=5))
echo "i*=5: $i"

i=1
((i<<=3))
echo "i<<=3: $i"

a=2
b=3
(( c = a+b ))
echo "c is a + b : $c"

a=hello
b=world
echo $((a+b))  # its output will be 0 
