#!/bin/bash

curl -o dataset-table.csv -X GET --header "Accept: text/csv" "http://grlc.io/api/peta-pico/nanopub-api/get_all_indexes"
