#!/bin/bash

(
  echo "set -e -o pipefail" ;
  (
    cat dataset-codes.txt \
    | awk '{ print "echo Processing "$0"\n./retrieve-dataset.sh "$0 }'
  );
  echo "Finished"
) \
  | bash
