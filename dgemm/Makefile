CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lcblas

FILES=main.c tools.c kernels.c

all: dgemm

opti: dgemmopt

#No optimization flags on
dgemm:
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
dgemmopt:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dgemmO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dgemmO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dgemmO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dgemmOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dgemmO1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dgemmO2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dgemmO3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dgemmOfast $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dgemmO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dgemmO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dgemmO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dgemmOfast $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) -O1 $(FILES) -o dgemmO1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o dgemmO2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o dgemmO3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o dgemmOfast $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf dgemm*

#Remove all mesure files
cleandat:
	@rm -Rf *.dat