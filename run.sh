#!/bin/bash
#PBS -P m72
#PBS -q gpuvolta
#PBS -l walltime=5:00:00
#PBS -l ncpus=12
#PBS -l ngpus=1
#PBS -l mem=48G
#PBS -l wd
#PBS -j oe

module load amber/22

pmemd.cuda -O \
    -i prod.in \
    -c DSPC_128.inpcrd \
    -p DSPC_128.prmtop  \
    -r DSPC_128.rst7 \
    -x DSPC_128.nc \
    -e DSPC_128.mden   \
    -inf DSPC_128 \
    -o DSPC_128.log