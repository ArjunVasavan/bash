#!/usr/bin/env bash

thing=$(( 2 + 2 ))  # you have to use  double paranthesis for using arithmetic expression 

echo "thing is(additon): $thing"

thing=$(( 2 * 2 ))

echo "thing is(multiplication): $thing"

thing=$((2**3))

echo "thing is( 2 to the power of 3): $thing"

thing=$( 2 + 2 )  # you have to use  double paranthesis for using arithmetic expression 

echo "thing is: $thing"

thing=$2+2   # you have to use  double paranthesis for using arithmetic expression 

echo "thing is: $thing"

