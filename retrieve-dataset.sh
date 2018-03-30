#!/bin/bash
#
# Usage:
# $ ./retrieve-dataset.sh ARTIFACTCODE
#

set -e -o pipefail

if [ -f data/$1.done ]; then
  echo "Already done: $1"
  exit
fi

np get --mongodb-host localhost -i -o data/$1.index.trig.gz $1 > data/$1.index.log 2>&1
np get --mongodb-host localhost -c -o data/$1.content.trig.gz $1 > data/$1.content.log 2>&1

touch data/$1.done
