data_size="100 50"
directory="datafiles"

function datafile {
    ./$1 $data_size > $2.dat
    grep -w "BASE" $2.dat >> $directory"/base.dat"
    grep -w "UNROLL4" $2.dat >> $directory"/unroll4.dat"
    grep -w "UNROLL8" $2.dat >> $directory"/unroll8.dat"
    grep -w "CBLAS" $2.dat >> $directory"/cblas.dat"
    rm -f $2.dat
}

make clean
rm -rf $directory
mkdir $directory

#Question 1, no optflags
make CC=gcc
datafile "dotprod" "gccO0"
make clean

make CC=clang
datafile "dotprod" "clangO0"
make clean

# make CC=icc
# datafile "dotprod" "iccO0"
# make clean

# make CC=icx
# datafile "dotprod" "icxO0"
# make clean

#Question 2-3, optflags
make opti CC=gcc
datafile "dotprodO1" "gccO1"
datafile "dotprodO2" "gccO2"
datafile "dotprodO3" "gccO3"
datafile "dotprodOfast" "gccOfast"
make clean

make opti CC=clang
datafile "dotprodO1" "clangO1"
datafile "dotprodO2" "clangO2"
datafile "dotprodO3" "clangO3"
datafile "dotprodOfast" "clangOfast"
make clean

# make opti CC=icc
# datafile "dotprodO1" "iccO1"
# datafile "dotprodO2" "iccO2"
# datafile "dotprodO3" "iccO3"
# datafile "dotprodOfast" "iccOfast"
# make clean

# make opti CC=icx
# datafile "dotprodO1" "icxO1"
# datafile "dotprodO2" "icxO2"
# datafile "dotprodO3" "icxO3"
# datafile "dotprodOfast" "icxOfast"
# make clean

#Question 5, gnuplot