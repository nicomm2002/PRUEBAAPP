#!/bin/bash

#SBATCH --job-name=template
#SBATCH --ntasks-per-node=1
#SBATCH --mem=1G
#SBATCH --time=00:15:00

# Cambiar al directorio de trabajo correcto
cd "C:\Users\ASUS\OneDrive\Escritorio\Matlab brainlife\EJEMPLO"

# parse config.json to load the input parameters needed for the app
t1=$(jq -r .t1 config.json)

# run the actual MATLAB code
matlab -nodesktop -r "try; main('$t1'); catch ME; disp(getReport(ME)); end; exit"


