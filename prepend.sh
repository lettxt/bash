#!/bin/bash
INPUT=
if [ ! -t 0 ]; then
  IFS='' read -d '' -r INPUT
fi
SEPARATOR=""
if [ ! -z "$1" ]; then
  params=("$@")
  for i in "${params[@]}"; do
    echo -n "$i$SEPARATOR"
  done
fi
[ ! -z "$INPUT" ] && echo -n "$INPUT"
