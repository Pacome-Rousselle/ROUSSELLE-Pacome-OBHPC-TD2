CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lcblas

FILES=main.c tools.c kernels.c

all: reduc

opti: reducopt

#No optimization flags on
reduc:
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
reducopt:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o reducO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o reducO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o reducO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o reducOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) -O1 $(FILES) -o reducO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o reducO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o reducO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o reducOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o reducO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o reducO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o reducO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o reducOfast $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) -O1 $(FILES) -o reducO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o reducO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o reducO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o reducOfast $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf reduc*

#Remove all mesure files
cleandat:
	@rm -Rf *.dat
