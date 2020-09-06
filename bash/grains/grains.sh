#!/usr/bin/env bash

readonly cell=$1
if [[ $cell == "total" ]]; then
  echo 18446744073709551615
  exit 0
fi
if ((cell < 1 || cell > 64)); then
  echo "Error: invalid input"
  exit 1
fi
readonly grains=$((1 << cell - 1))
printf "%u" $grains
