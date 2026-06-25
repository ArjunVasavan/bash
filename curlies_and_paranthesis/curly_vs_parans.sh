#!/usr/bin/env bash

source ./lib/greetings.sh || exit 1

name='buddy'
echo "before greeting arjun :$name"
(greet arjun)  # () -> creates an subshell
echo "after greeting arjun :$name"
