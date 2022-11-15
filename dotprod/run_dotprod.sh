#!/bin/bash

data_size="100"
kernel="50"
task="taskset -c 1"
make clean

make CC=gcc
#Question 1, no optflags
$task ./dotprod $data_size $kernel > gccO0.dat
#Question 2-3, optflags
$task ./dotprodO1 $data_size $kernel > gccO1.dat
$task ./dotprodO2 $data_size $kernel > gccO2.dat
$task ./dotprodO3 $data_size $kernel > gccO3.dat
$task ./dotprodOfast $data_size $kernel > gccOfast.dat
make clean

make CC=clang
#No optflags
$task ./dotprod $data_size $kernel > clangO0.dat
#Optflags
$task ./dotprodO1 $data_size $kernel > clangO1.dat
$task ./dotprodO2 $data_size $kernel > clangO2.dat
$task ./dotprodO3 $data_size $kernel > clangO3.dat
$task ./dotprodOfast  $data_size $kernel > clangOfast.dat
make clean

# make CC=icc
#No optflags
# $task ./dotprod $data_size $kernel > iccO0.dat
#Optflags
# $task ./dotprodO1 $data_size $kernel > iccO1.dat
# $task ./dotprodO2 $data_size $kernel > iccO2.dat
# $task ./dotprodO3 $data_size $kernel > iccO3.dat
# $task ./dotprodOfast $data_size $kernel > iccOfast.dat
# make clean

# make CC=icx
#No optflags
# $task ./dotprod $data_size $kernel > icxO0.dat
#Optflags
# $task ./dotprodO1 $data_size $kernel > icxO1.dat
# $task ./dotprodO2 $data_size $kernel > icxO2.dat
# $task ./dotprodO3 $data_size $kernel > icxO3.dat
# $task ./dotprodOfast $data_size $kernel > icxOfast.dat
# make clean