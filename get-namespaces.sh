#!/bin/bash

npop namespaces --subj \
  -h namespaces/all-h-subj.txt.gz \
  -a namespaces/all-a-subj.txt.gz \
  -p namespaces/all-p-subj.txt.gz \
  -i namespaces/all-i-subj.txt.gz \
  npdump/*

npop namespaces --obj \
  -h namespaces/all-h-obj.txt.gz \
  -a namespaces/all-a-obj.txt.gz \
  -p namespaces/all-p-obj.txt.gz \
  -i namespaces/all-i-obj.txt.gz \
  npdump/*
