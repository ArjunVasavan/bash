#!/usr/bin/env bash

read -r foo  # -r -> reads '\n' also if we dont use it it wont read escape sequences
echo "Hello $foo how are ya 😊"
