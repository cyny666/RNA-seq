#!/bin/bash
# Run SortMeRNA (~15min)
sortmerna --ref $1 --reads results/2_trimmed_output/sample_trimmed.fq --aligned results/3_rRNA/aligned/sample_aligned.fq --other results/3_rRNA/filtered/sample_filtered.fq --fastx --log -a 4 -v
# Move logs into the correct folder
mv -v results/3_rRNA/aligned/sample_aligned.log results/3_rRNA/logs

