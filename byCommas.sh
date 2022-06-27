#!/bin/bash
if [ -t 0 ]; then
  params=("$@")
else
  readarray -t params
fi
first=
for i in "${params[@]}"; do
  [ ! -z "$first" ] && echo -n ","
  echo -n "$i"
  first=1
done
echo ""