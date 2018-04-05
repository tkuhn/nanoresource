#!/bin/bash

SIZE=`cat data/$1.content.log | tr '\r' '\n' | tail -1 | awk '{ print $1 }'`
echo $1,$SIZE
