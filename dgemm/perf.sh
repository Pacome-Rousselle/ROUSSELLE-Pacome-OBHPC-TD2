#Question 1, no optflags
make CC=gcc
./dgemm 100 10 > gccO0.dat
make clean

make CC=clang
./dgemm 100 10 > clangO0.dat
make clean

#make CC=icc
#./dgemm 100 10 > iccO0.dat
#make clean

#make CC=icx
#./dgemm 100 10 > icxO0.dat
#make clean

#Question 2-3, optflags
make opti CC=gcc
./dgemmO1 100 10 > gccO1.dat
./dgemmO2 100 10 > gccO2.dat
./dgemmO3 100 10 > gccO3.dat
./dgemmOfast 100 10 > gccOfast.dat
make clean

make opti CC=clang
./dgemmO1 100 10 > clangO1.dat
./dgemmO2 100 10 > clangO2.dat
./dgemmO3 100 10 > clangO3.dat
./dgemmOfast 100 10 > clangOfast.dat
make clean

#make opti CC=icc
#./dgemmO1 100 10 > iccO1.dat
#./dgemmO2 100 10 > iccO2.dat
#./dgemmO3 100 10 > iccO3.dat
#./dgemmOfast 100 10 > iccOfast.dat
#make clean

#make opti CC=icx
#./dgemmO1 100 10 > icxO1.dat
#./dgemmO2 100 10 > icxO2.dat
#./dgemmO3 100 10 > icxO3.dat
#./dgemmOfast 100 10 > icxOfast.dat
#make clean

#Question 5, gnuplot