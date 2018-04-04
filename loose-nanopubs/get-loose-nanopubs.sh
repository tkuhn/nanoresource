#!/bin/bash

rm -f loose-nanopubs.trig

cat loose-nanopubs.csv \
  | tail -n +2 \
  | tr -d '\015' \
  | awk '{ print "np get "$1" >> loose-nanopubs.trig" }' \
  | bash

gzip loose-nanopubs.trig
