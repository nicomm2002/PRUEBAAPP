#!/bin/bash

#SBATCH --job-name=template
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1G
#SBATCH --time=00:15:00
 
# Cambiar al directorio de trabajo correcto
cd "C:/Users/ASUS/OneDrive/Escritorio/Matlab brainlife/EJEMPLO"
mkdir -p out_dir

# run the actual MATLAB code
matlab -nodesktop -r "try; run('main2.m'); catch ME; disp(getReport(ME)); end; exit"

