#Question 1, no optflags
make CC=gcc
./dotprod 100 10 > gcc.dat
make clean

make CC=clang
./dotprod 100 10 > clang.dat
make clean

#make CC=icc
#./dotprod 100 10 > icc.dat
#make clean

#make CC=icx
#./dotprod 100 10 > icx.dat
#make clean

#Question 2-3, optflags
make opti CC=gcc
./dotprodO1 100 10 > gccO1.dat
./dotprodO2 100 10 > gccO2.dat
./dotprodO3 100 10 > gccO3.dat
./dotprodOfast 100 10 > gccOfast.dat
make clean

make opti CC=clang
./dotprodO1 100 10 > clangO1.dat
./dotprodO2 100 10 > clangO2.dat
./dotprodO3 100 10 > clangO3.dat
./dotprodOfast 100 10 > clangOfast.dat
make clean

#make opti CC=icc
#./dotprodO1 100 10 > iccO1.dat
#./dotprodO2 100 10 > iccO2.dat
#./dotprodO3 100 10 > iccO3.dat
#./dotprodOfast 100 10 > iccOfast.dat
#make clean

#make opti CC=icx
#./dotprodO1 100 10 > icxO1.dat
#./dotprodO2 100 10 > icxO2.dat
#./dotprodO3 100 10 > icxO3.dat
#./dotprodOfast 100 10 > icxOfast.dat
#make clean

#Question 5, gnuplot