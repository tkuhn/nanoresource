#!/bin/bash

np mkindex \
  -o files/index.LIDDIv1.02.trig.gz \
  -t "Linked Drug-Drug Interactions (LIDDI) dataset v1.02" \
  -d "This dataset combines data on drug-drug interactions from different sources, and formats them as nanopublications. For details see: Banda et al. Provenance-Centered Dataset of Drug-Drug Interactions. In Proceedings of ISWC 2015, Springer." \
  -a http://liddi.stanford.edu \
  -c 0000-0001-8499-824X \
  files/trusty.LIDDIv1.02.trig.gz

