#!/bin/bash
conda install -c bioconda sortmerna=2.1b
# Download the sortmerna package (~2min) into sortmerna_db folder
wget -P sortmerna_db https://github.com/biocore/sortmerna/archive/2.1b.zip

# Decompress folder
unzip sortmerna_db/2.1b.zip -d sortmerna_db

# Move the database into the correct folder
mv sortmerna_db/sortmerna-2.1b/rRNA_databases/ sortmerna_db/

# Remove unnecessary folders
rm sortmerna_db/2.1b.zip
rm -r sortmerna_db/sortmerna-2.1b

# Save the location of all the databases into one folder
sortmernaREF=sortmerna_db/rRNA_databases/silva-arc-16s-id95.fasta,sortmerna_db/index/silva-arc-16s-id95:\
sortmerna_db/rRNA_databases/silva-arc-23s-id98.fasta,sortmerna_db/index/silva-arc-23s-id98:\
sortmerna_db/rRNA_databases/silva-bac-16s-id90.fasta,sortmerna_db/index/silva-bac-16s-id95:\
sortmerna_db/rRNA_databases/silva-bac-23s-id98.fasta,sortmerna_db/index/silva-bac-23s-id98:\
sortmerna_db/rRNA_databases/silva-euk-18s-id95.fasta,sortmerna_db/index/silva-euk-18s-id95:\
sortmerna_db/rRNA_databases/silva-euk-28s-id98.fasta,sortmerna_db/index/silva-euk-28s-id98

# Run SortMeRNA (~15min)
sortmerna \
--ref $sortmernaREF \
--reads results/2_trimmed_output/sample_trimmed.fq \
--aligned results/3_rRNA/aligned/sample_aligned.fq \
--other results/3_rRNA/filtered/sample_filtered.fq \
--fastx \
--log \
-a 4 \
-v

# Move logs into the correct folder
mv -v results/3_rRNA/aligned/sample_aligned.log results/3_rRNA/logs


