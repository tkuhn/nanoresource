#!/bin/bash
#
# Usage:
# $ ./retrieve-dataset.sh ARTIFACTCODE
#

np get -i -o data/$1.index.trig.gz $1 > data/$1.index.log 2>&1
np get -c -o data/$1.content.trig.gz $1 > data/$1.content.log 2>&1
