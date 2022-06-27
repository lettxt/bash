#!/bin/bash
if [ -t 0 ]; then
  params=("$@")
else
  readarray -t params
fi
SEARCH="."
REPLACE="_"
separator=","
first=
for item in "${params[@]}"; do
  [ ! -z "$first" ] && echo -n $separator
  item="${item%\"}"
  item="${item#\"}"
  #item=${item/$SEARCH/$REPLACE}
  echo -n "$item"
  first=1
done
echo ""