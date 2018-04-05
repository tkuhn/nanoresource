#!/bin/bash

rm -f dataset-sizes.csv

echo "code,size" >> dataset-sizes.csv

cat dataset-codes.txt \
  | awk '{ print "scripts/get-dataset-size.sh "$1" >> dataset-sizes.csv" }' \
  | bash
