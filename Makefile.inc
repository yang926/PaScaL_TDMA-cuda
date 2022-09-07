# Main compiler with MPI. Use mpiifort for intel MPI.
FC = mpif90

# Complie flag
# For debugging
#FLAG = -O0 -g -fcheck=all --warn-all
# FLAG = -O0 -g -fPIC -check all -warn all -WB

#FLAG = -O2 -fPIC -fp-model=precise -xCORE-AVX512 -fopenmp
#FLAG = -O3 -fast -fPIC -Mcuda -Minfo=accel -L/usr/local/cuda/lib64 -lnvToolsExt -DUSE_NVTX
#FLAG = -O0 -gopt -C -Mchkptr -traceback -fPIC -mp:multicore -Mcuda -Minfo=accel -L/usr/local/cuda/lib64 -lnvToolsExt
FLAG = -O3 -fast -fPIC -mp:multicore -Mcuda -ta=tesla -Minfo=accel -L/usr/local/cuda/lib64 -lnvToolsExt -DUSE_NVTX