#!/bin/bash

#PBS -l procs=10,walltime=01:00:00

# In order to run this script use the following command:
# qsub SNOWTest.bash

cd $PBS_O_WORKDIR

module load R           #load the default R module
module load openmpi/gnu #load the default OpenMPI module for the GNU compilers

mpiexec /opt/R/2.11.1/lib64/R/library/snow/RMPISNOW --no-restore --no-save --quiet < SNOWTest.R

