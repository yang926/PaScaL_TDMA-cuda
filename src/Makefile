include ../Makefile.inc

LIB = libpascal_tdma.a

OBJDIR = ./obj

NVTX = $(OBJDIR)/nvtx.o
TDMAS = $(OBJDIR)/tdmas_cuda.o #$(OBJDIR)/tdmas.o
RANGE = $(OBJDIR)/para_range.o
PTDMA = $(OBJDIR)/pascal_tdma_cuda.o #$(OBJDIR)/pascal_tdma.o 

OBJS   = $(NVTX) $(RANGE) $(TDMAS) $(PTDMA)

all: $(LIB) inc

$(LIB): $(OBJS)
	ar qc $@ $(OBJS)
	cp $@ ../lib

inc: $(LIB)
	cp $(OBJDIR)/*.mod ../include

$(OBJDIR)/%.o: %.cuf
	$(FC) $(FLAG) -c $^ -o $@  -module $(OBJDIR) ../include -I$(OBJDIR) -I../include
$(OBJDIR)/%.o: %.f90
	$(FC) $(FLAG) -c $^ -o $@  -module $(OBJDIR) ../include -I$(OBJDIR) -I../include
$(OBJDIR)/%.o:$(OBJDIR)/%.mod

%(PTDMA)	 : %(RANGE) %(TDMAS)

clean:
	rm -rf ../lib ../include *__genmod.f90 $(LIB) *.mod
	rm -rf $(OBJDIR)

