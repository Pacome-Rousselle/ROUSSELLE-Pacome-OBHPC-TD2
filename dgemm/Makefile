CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lcblas

FILES=main.c tools.c kernels.c

all: dgemm

opti: dgemmO

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
dgemmO:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@fast $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@fast $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@fast $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@fast $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf dgemm*