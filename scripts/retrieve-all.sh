#!/bin/bash

(
  echo "set -e -o pipefail" ;
  (
    cat dataset-codes.txt \
    | awk '{ print "echo Processing "$0"\nscripts/retrieve-dataset.sh "$0 }'
  );
  echo "echo Finished"
) \
  | bash
