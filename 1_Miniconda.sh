#!/bin/bash

# Download and install git, vim, and wget
apt-get update
apt-get install -y git vim wget

# Download the Miniconda3 installer to your home directory (Only for Linux or Cluster)
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh

# Run the miniconda installation
bash ~/miniconda.sh -b -p ~/miniconda

# Add miniconda to the system path
echo 'export PATH="$HOME/miniconda/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Add bioinformatic channels for downloading required packages
conda config --add channels conda-forge
conda config --add channels defaults
conda config --add channels r
conda config --add channels bioconda
# Change directory into the new folder
cd new_workflow

