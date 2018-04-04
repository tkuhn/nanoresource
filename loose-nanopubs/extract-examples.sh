#!/bin/bash

npop filter --no-examples -o no-examples.trig.gz loose-nanopubs.trig.gz
npop filter --only-examples -o examples.trig.gz loose-nanopubs.trig.gz
