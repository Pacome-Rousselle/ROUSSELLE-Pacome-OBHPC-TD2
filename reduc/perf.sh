#Question 1, no optflags
make CC=gcc
./reduc 100 10 > gcc.dat
make clean

make CC=clang
./reduc 100 10 > clang.dat
make clean

#make CC=icc
#./reduc 100 10 > icc.dat
#make clean

#make CC=icx
#./reduc 100 10 > icx.dat
#make clean

#Question 2-3, optflags
make opti CC=gcc
./reducO1 100 10 > gccO1.dat
./reducO2 100 10 > gccO2.dat
./reducO3 100 10 > gccO3.dat
./reducOfast 100 10 > gccOfast.dat
make clean

make opti CC=clang
./reducO1 100 10 > clangO1.dat
./reducO2 100 10 > clangO2.dat
./reducO3 100 10 > clangO3.dat
./reducOfast 100 10 > clangOfast.dat
make clean

#make opti CC=icc
#./reducO1 100 10 > iccO1.dat
#./reducO2 100 10 > iccO2.dat
#./reducO3 100 10 > iccO3.dat
#./reducOfast 100 10 > iccOfast.dat
#make clean

#make opti CC=icx
#./reducO1 100 10 > icxO1.dat
#./reducO2 100 10 > icxO2.dat
#./reducO3 100 10 > icxO3.dat
#./reducOfast 100 10 > icxOfast.dat
#make clean

#Question 5, gnuplot