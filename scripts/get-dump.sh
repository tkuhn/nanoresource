#!/bin/bash

set -e

cd npdump

for C in {1..10803}; do
  N=$(printf "%05d" $C)
  mongofiles --db nanopub-server --prefix packages_gzipped -l dump/$N.trig.gz get $C
done

rm -f combined-dump.trig.gz

ls dump \
  | grep .trig.gz \
  | awk '{ print "cat dump/"$1" >> combined-dump.trig.gz" }' \
  | bash

# Get nanopubs of last page:

rm -f last-page.trig

wget -O - http://localhost:8080/nanopubs.txt?page=10804 \
  | tr -d '\015' \
  | grep -o '.\{45\}$' \
  | awk '{ print "wget -O - http://localhost:8080/"$1".trig >> last-page.trig" }' \
  | bash

gzip last-page.trig

cat last-page.trig.gz >> combined-dump.trig.gz
