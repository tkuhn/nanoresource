#!/bin/bash

npop extract -a -p --out-format nq npdump/nanopub-dump-20180405.trig.gz \
  | grep '> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <' \
  | sed -r 's|<([^>]*)> <http://www.w3.org/1999/02/22-rdf-syntax-ns#type> <([^>]*)> .*|\2|' \
  | gzip \
  > types/types.txt.gz

cat types/types.txt.gz \
  | gunzip \
  | sort \
  | uniq -c \
  | sort -r -n \
  | gzip \
  > types/type-count.txt.gz
