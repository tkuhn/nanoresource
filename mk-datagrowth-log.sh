#!/bin/bash

cat server-logs/semanticscience/nanopub-server.log* | grep "Process page" | grep np.inn.ac > inn-ac.log
