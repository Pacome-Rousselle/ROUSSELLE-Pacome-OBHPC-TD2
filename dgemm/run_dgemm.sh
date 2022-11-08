#!/bin/bash

data_size="100 50"
make clean

make CC=gcc
#Question 1, no optflags
./dgemm $data_size > gccO0.dat
#Question 2-3, optflags
./dgemmO1 $data_size > gccO1.dat
./dgemmO2 $data_size > gccO2.dat
./dgemmO3 $data_size > gccO3.dat
./dgemmOfast $data_size > gccOfast.dat
make clean

make CC=clang
#No optflags
./dgemm $data_size > clangO0.dat
#Optflags
./dgemmO1 $data_size > clangO1.dat
./dgemmO2 $data_size > clangO2.dat
./dgemmO3 $data_size > clangO3.dat
./dgemmOfast  $data_size > clangOfast.dat
make clean

# make CC=icc
#No optflags
# ./dgemm $data_size > iccO0.dat
#Optflags
# ./dgemmO1 $data_size > iccO1.dat
# ./dgemmO2 $data_size > iccO2.dat
# ./dgemmO3 $data_size > iccO3.dat
# ./dgemmOfast $data_size > iccOfast.dat
# make clean

# make CC=icx
#No optflags
# ./dgemm $data_size > icxO0.dat
#Optflags
# ./dgemmO1 $data_size > icxO1.dat
# ./dgemmO2 $data_size > icxO2.dat
# ./dgemmO3 $data_size > icxO3.dat
# ./dgemmOfast $data_size > icxOfast.dat
# make clean