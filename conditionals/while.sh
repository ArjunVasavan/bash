#!/usr/bin/env bash

while [[ -f file.txt ]]; do
  echo "file.txt exist and its an file"
  sleep 1
done

echo "file is gone"
