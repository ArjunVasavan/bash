#!/usr/bin/env bash

s=$1  # read single argument 

case "$s" in 
  arjun)
    echo "hi $s"
    ;;  # like break statement in c here we use ;; to show breaking 
  vasavan)
    echo "oh hi $s"
    ;;
  abhimanyu)
    echo "oh run $s!"
    ;;
  a* | k* )
    echo "hello name starting with a or k $s!"
    ;;
  *)  # wild card acting as default 
    echo "hi nothing"
esac  # closing case is opposite of case -> esac 

