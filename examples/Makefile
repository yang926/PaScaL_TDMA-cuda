include ../Makefile.inc

EXE = a.out

INC = ../include
LIB = ../lib -lpascal_tdma -ltimer

#nvtx = nvtx.o
global = global.o
topology = mpi_topology.o 
subdomain = mpi_subdomain.o
THETA = solve_theta_plan_many_cuda.o #solve_theta_plan_single.o  #solve_theta_plan_many.o #solve_theta_plan_many_thread_team.o 
main = main.o

OBJS   =  $(global) $(topology) $(subdomain) $(THETA) $(main)


all:$(OBJS)
	$(FC) ${FLAG} ${OBJS} -o $(EXE) -I$(INC) -L$(LIB)
	mv a.out ../run

%.o: %.f90
	$(FC) $(FLAG) -c $^ -o $@  -I$(INC)
%.o: %.cuf
	$(FC) $(FLAG) -c $^ -o $@  -I$(INC)

%(subdomain)	: %(topology)
%(THETA)		: %(global) #%(p3t_module) 
%(main)			: %(global) %(topology) %(subdomain) %(THETA)
$(EXE)			: %(OBJS)

clean:
	rm -f *.mod *.o *__genmod.f90 ../run/$(EXE) ../run/*.PLT ../run/*.dat
