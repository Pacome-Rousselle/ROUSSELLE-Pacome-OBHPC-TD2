#!/bin/bash

data_size="100 50"
make clean

make CC=gcc
#Question 1, no optflags
./dotprod $data_size > gccO0.dat
#Question 2-3, optflags
./dotprodO1 $data_size > gccO1.dat
./dotprodO2 $data_size > gccO2.dat
./dotprodO3 $data_size > gccO3.dat
./dotprodOfast $data_size > gccOfast.dat
make clean

make CC=clang
#No optflags
./dotprod $data_size > clangO0.dat
#Optflags
./dotprodO1 $data_size > clangO1.dat
./dotprodO2 $data_size > clangO2.dat
./dotprodO3 $data_size > clangO3.dat
./dotprodOfast  $data_size > clangOfast.dat
make clean

# make CC=icc
#No optflags
# ./dotprod $data_size > iccO0.dat
#Optflags
# ./dotprodO1 $data_size > iccO1.dat
# ./dotprodO2 $data_size > iccO2.dat
# ./dotprodO3 $data_size > iccO3.dat
# ./dotprodOfast $data_size > iccOfast.dat
# make clean

# make CC=icx
#No optflags
# ./dotprod $data_size > icxO0.dat
#Optflags
# ./dotprodO1 $data_size > icxO1.dat
# ./dotprodO2 $data_size > icxO2.dat
# ./dotprodO3 $data_size > icxO3.dat
# ./dotprodOfast $data_size > icxOfast.dat
# make clean