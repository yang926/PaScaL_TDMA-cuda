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
	rm *_t1;
	rm Output.*;

exe:
	CUDA_VISIBLE_DEVICES=0,1,2,3 mpirun -np 4 ./run/a.out

#nvtx:
#	CUDA_VISIBLE_DEVICES=0 nsys profile --stats=true --trace=nvtx,cuda --cuda-memory-usage=true  --force-overwrite true -o Output mpirun -np 1 ./a.out
#	nsys profile --stats=true --trace=nvtx,cuda --cuda-memory-usage=true  --force-overwrite true -o Output mpirun -np 2  ./run/a.out
