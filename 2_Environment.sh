#!/bin/bash
# Download the example data
wget  ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR137/001/SRR1374921/SRR1374921.fastq.gz

# Install the needed environment
conda install -c bioconda fastqc --yes
conda install -c bioconda trim-galore --yes
conda install -c bioconda star --yes
apt-get install tree
mv SRR1374921.fastq.gz input/sample.fastq.gz
~                                                 ~                       
