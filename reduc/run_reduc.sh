#!/bin/bash

data_size="100 50"
task="taskset -c 1"
make clean

make CC=gcc
#Question 1, no optflags
$task ./reduc $data_size > gccO0.dat
#Question 2-3, optflags
$task ./reducO1 $data_size > gccO1.dat
$task ./reducO2 $data_size > gccO2.dat
$task ./reducO3 $data_size > gccO3.dat
$task ./reducOfast $data_size > gccOfast.dat
make clean

make CC=clang
#No optflags
$task ./reduc $data_size > clangO0.dat
#Optflags
$task ./reducO1 $data_size > clangO1.dat
$task ./reducO2 $data_size > clangO2.dat
$task ./reducO3 $data_size > clangO3.dat
$task ./reducOfast  $data_size > clangOfast.dat
make clean

# make CC=icc
#No optflags
# $task ./reduc $data_size > iccO0.dat
#Optflags
# $task ./reducO1 $data_size > iccO1.dat
# $task ./reducO2 $data_size > iccO2.dat
# $task ./reducO3 $data_size > iccO3.dat
# $task ./reducOfast $data_size > iccOfast.dat
# make clean

# make CC=icx
#No optflags
# $task ./reduc $data_size > icxO0.dat
#Optflags
# $task ./reducO1 $data_size > icxO1.dat
# $task ./reducO2 $data_size > icxO2.dat
# $task ./reducO3 $data_size > icxO3.dat
# $task ./reducOfast $data_size > icxOfast.dat
# make clean