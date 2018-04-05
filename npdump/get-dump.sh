#!/bin/bash

set -e

for C in {1..10798}; do
  N=$(printf "%05d" $C)
  mongofiles --db nanopub-server --prefix packages_gzipped -l dump/$N.trig.gz get $C
done

rm -f combined-dump.trig.gz

ls dump \
  | grep .trig.gz \
  | awk '{ print "cat dump/"$1" >> combined-dump.trig.gz" }' \
  | bash
