#!/bin/bash
#SBATCH -J mpi_gpu_job
#SBATCH -p cas_v100nv_8
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH -o %x.o%j
#SBATCH -e %x.e%j
#SBATCH --time 00:30:00
#SBATCH --gres=gpu:4
#SBATCH --comment inhouse     # See Application SBATCH options name table's

module purge
module load nvidia_hpc_sdk/21.5

#mpirun -np 8 ./run/a.out
srun  ./run/a.out