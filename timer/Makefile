include ../Makefile.inc

LIB = libtimer.a

OBJDIR = ./obj

TIMER = $(OBJDIR)/timer.o #$(OBJDIR)/tdmas_cuda.o

OBJS   = $(TIMER)

all: $(LIB) inc

$(LIB): $(OBJS)
	ar qc $@ $(OBJS)
	cp $@ ../lib

inc: $(LIB)
	cp $(OBJDIR)/*.mod ../include

$(OBJDIR)/%.o: %.f90
	$(FC) $(FLAG) -c $^ -o $@  -module $(OBJDIR) -I$(OBJDIR)
$(OBJDIR)/%.o:$(OBJDIR)/%.mod

%(PTDMA)	 : %(RANGE) %(TDMAS)

clean:
	rm -rf ../lib ../include *__genmod.f90 $(LIB)
	rm -rf $(OBJDIR)

