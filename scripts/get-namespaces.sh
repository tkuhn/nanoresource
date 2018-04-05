#!/bin/bash

npop namespaces --subj \
  -h namespaces/all-h-subj.txt.gz \
  -a namespaces/all-a-subj.txt.gz \
  -p namespaces/all-p-subj.txt.gz \
  -i namespaces/all-i-subj.txt.gz \
  npdump/combined-dump.trig.gz

npop namespaces --pred \
  -h namespaces/all-h-pred.txt.gz \
  -a namespaces/all-a-pred.txt.gz \
  -p namespaces/all-p-pred.txt.gz \
  -i namespaces/all-i-pred.txt.gz \
  npdump/combined-dump.trig.gz

npop namespaces --obj \
  -h namespaces/all-h-obj.txt.gz \
  -a namespaces/all-a-obj.txt.gz \
  -p namespaces/all-p-obj.txt.gz \
  -i namespaces/all-i-obj.txt.gz \
  npdump/combined-dump.trig.gz
