#!/bin/bash

np mkindex \
  -o index.no-examples.trig.gz \
  -t "Dataset of loose nanopublications" \
  -d "This dataset combines all nanopublications (excluding indexes and example nanopublications) that were otherwise not part of a nanopublication index at the publication time of this index." \
  -c 0000-0002-1267-0234 \
  no-examples.trig.gz

np mkindex \
  -o index.examples.trig.gz \
  -t "Dataset of loose example nanopublications" \
  -d "This dataset combines all example nanopublications (i.e. nanopublications that use example namespaces and/or are tagged as npx:ExampleNanopub) that were otherwise not part of a nanopublication index at the publication time of this index." \
  -c 0000-0002-1267-0234 \
  examples.trig.gz
