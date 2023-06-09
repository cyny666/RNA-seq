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

