#!/bin/bash

curl -o dataset-table.csv -X GET --header "Accept: text/csv" "http://grlc.io/api/peta-pico/nanopub-api/get_all_indexes"

cat dataset-table.csv \
  | grep -e '^http://' \
  | sed -r 's/^([^,]*),.*$/\1/' \
  | grep -o '.\{45\}$' \
  > dataset-codes.txt

