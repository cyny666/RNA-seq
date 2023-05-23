#!/bin/bash
# Run FastQC
fastqc \
-o results/1_initial_qc/ \
--noextract  $1

