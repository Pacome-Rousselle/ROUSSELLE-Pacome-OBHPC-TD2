CFLAGS=-Wall

INTEL_LFLAGS=-qmkl
GNU_LFLAGS=-lm -lcblas

FILES=main.c tools.c kernels.c

all: dotprod

#Added optimization flags
dotprod:
ifeq ($(CC),icc)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O $(FILES) -o $@O1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@O2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@O3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@Ofast $(INTEL_LFLAGS)
else
ifeq ($(CC),icx)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O $(FILES) -o $@O1 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@O2 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@O3 $(INTEL_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@Ofast $(INTEL_LFLAGS)
else
ifeq ($(CC),gcc)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@O1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@O2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@O3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@Ofast $(GNU_LFLAGS)
else
ifeq ($(CC),clang)
	$(CC) $(CFLAGS) $(FILES) -o $@ $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O1 $(FILES) -o $@O1 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O2 $(FILES) -o $@O2 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -O3 $(FILES) -o $@O3 $(GNU_LFLAGS)
	$(CC) $(CFLAGS) -Ofast $(FILES) -o $@Ofast $(GNU_LFLAGS)
else
	@echo "ERROR: no compiler specified using CC. Possible values for CC: gcc, icc, icx, clang"
endif
endif
endif
endif

clean:
	@rm -Rf dotprod*