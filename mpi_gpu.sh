#!/bin/bash
#SBATCH -J mpi_gpu_job
#SBATCH -p amd_a100_4
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH -o %x.o%j
#SBATCH -e %x.e%j
#SBATCH --time 00:30:00
#SBATCH --gres=gpu:4
#SBATCH --comment inhouse     # See Application SBATCH options name table's

module purge
module load nvidia_hpc_sdk/21.9

make all

cd run

mpirun -np 4 ./a.out 
#srun  ./a.out