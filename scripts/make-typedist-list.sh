#!/bin/bash

(
  echo "rank,count"
  cat types/type-count.txt.gz \
    | gunzip \
    | sed -r 's/(.*[0-9]*) (.*)/\1/' \
    | awk '{ n=n+1; print n","$1}'
) \
  > types/type-ranks.csv
