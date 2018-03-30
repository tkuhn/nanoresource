#!/bin/bash

np mkindex \
  -o files/index.drugbank-drug-core.trig.gz \
  -t "Core drug data extracted from Drugbank via Bio2RDF" \
  -a https://www.drugbank.ca \
  -a http://bio2rdf.org \
  -a https://github.com/tkuhn/bio2rdf2nanopub \
  -c 0000-0002-1267-0234 \
  files/drugbank-drug-core.trig.gz

np mkindex \
  -o files/index.drugbank-ddi.trig.gz \
  -t "Drug-drug interaction data extracted from Drugbank via Bio2RDF" \
  -a https://www.drugbank.ca \
  -a http://bio2rdf.org \
  -a https://github.com/tkuhn/bio2rdf2nanopub \
  -c 0000-0002-1267-0234 \
  files/drugbank-ddi.trig.gz

np mkindex \
  -o files/index.drugbank-food.trig.gz \
  -t "Food interaction data for drugs extracted from Drugbank via Bio2RDF" \
  -a https://www.drugbank.ca \
  -a http://bio2rdf.org \
  -a https://github.com/tkuhn/bio2rdf2nanopub \
  -c 0000-0002-1267-0234 \
  files/drugbank-food.trig.gz

np mkindex \
  -o files/index.drugbank-target.trig.gz \
  -t "Drug target data extracted from Drugbank via Bio2RDF" \
  -a https://www.drugbank.ca \
  -a http://bio2rdf.org \
  -a https://github.com/tkuhn/bio2rdf2nanopub \
  -c 0000-0002-1267-0234 \
  files/drugbank-target.trig.gz

np mkindex \
  -o files/index.drugbank-targetrel.trig.gz \
  -t "Drug target relations extracted from Drugbank via Bio2RDF" \
  -a https://www.drugbank.ca \
  -a http://bio2rdf.org \
  -a https://github.com/tkuhn/bio2rdf2nanopub \
  -c 0000-0002-1267-0234 \
  files/drugbank-targetrel.trig.gz

