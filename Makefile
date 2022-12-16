# Compiler and complilation flag are included in Makefile.inc
include Makefile.inc

lib:
	mkdir -p include;mkdir -p lib
	cd timer; mkdir -p obj; make all
	cd src; mkdir -p obj; make all

example:
	cd examples; make all

all:
	mkdir -p include; mkdir -p lib
	cd timer; mkdir -p obj; make all
	cd src; mkdir -p obj; make all
	cd examples; make all

clean:
	cd timer; make clean
	cd src; make clean
	cd examples; make clean
	rm -rf *_t1;
	rm -rf Output.*;
	rm -rf core.*;
	rm -rf *.plt;

exe:
	mpirun -np 8 ./run/a.out

nvtx:
#	CUDA_VISIBLE_DEVICES=0 nsys profile --stats=true --trace=nvtx,cuda --cuda-memory-usage=true  --force-overwrite true -o Output mpirun -np 1 ./a.out
	nsys profile --stats=true --trace=nvtx,cuda --cuda-memory-usage=true  --force-overwrite true -o Output mpirun ./run/a.out
