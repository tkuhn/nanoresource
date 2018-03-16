#!/bin/bash

cat dataset-table.csv \
  | grep -e '^http://' \
  | sed -r 's/^([^,]*),.*$/\1/' \
  > dataset-uris.txt
