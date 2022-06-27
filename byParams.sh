#!/bin/bash
if [ -t 0 ]; then
  params=("$@")
else
  readarray -t params
fi
for i in "${params[@]}"; do
  echo -n "$i"
done
echo ""