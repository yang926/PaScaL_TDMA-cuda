#!/bin/bash
#SBATCH -J YMG_Pascal_TDMA-cuda
#SBATCH -p amd_a100nv_8
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=8
#SBATCH -o %x.o%j
#SBATCH -e %x.e%j
#SBATCH --time 00:30:00
#SBATCH --gpus-per-node=8
#SBATCH --gres=gpu:8
#SBATCH --comment inhouse     # See Application SBATCH options name table's

module purge
module load nvidia_hpc_sdk/21.9

make all
make exe