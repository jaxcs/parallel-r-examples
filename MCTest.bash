#!/bin/bash

#PBS -l nodes=1:ppn=10,walltime=01:00:00

# In order to run this script use the following command:
# qsub MCTest.bash

cd $PBS_O_WORKDIR

#load the default R module
module load R

R --no-restore --no-save --quiet < MCTest.R

