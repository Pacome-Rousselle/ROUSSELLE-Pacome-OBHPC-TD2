CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lcblas

FILES=main.c tools.c kernels.c

all: dotprod

opti: dotprodopt

#No optimization flags on
dotprod:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

#Optimization flags on 
dotprodopt:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dotprodO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dotprodO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dotprodO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dotprodOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dotprodO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dotprodO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dotprodO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dotprodOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dotprodO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dotprodO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dotprodO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dotprodOfast $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dotprodO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dotprodO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dotprodO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dotprodOfast $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf dotprod*

#Remove all mesure files
cleandat:
	@rm -Rf *.dat