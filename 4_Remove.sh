#!/bin/bash
# Run Trim Galore!
trim_galore --quality 20 --fastqc --length 25 --output_dir results/2_trimmed_output/ $1
~        
