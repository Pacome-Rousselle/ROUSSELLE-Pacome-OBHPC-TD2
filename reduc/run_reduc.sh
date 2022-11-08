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
make cleandat
mkdir $directory

#Question 1, no optflags
make CC=gcc
datafile "reduc" "gccO0"
make clean

make CC=clang
datafile "reduc" "clangO0"
make clean

# make CC=icc
# datafile "reduc" "iccO0"
# make clean

# make CC=icx
# datafile "reduc" "icxO0"
# make clean

#Question 2-3, optflags
make opti CC=gcc
datafile "reducO1" "gccO1"
datafile "reducO2" "gccO2"
datafile "reducO3" "gccO3"
datafile "reducOfast" "gccOfast"
make clean

make opti CC=clang
datafile "reducO1" "clangO1"
datafile "reducO2" "clangO2"
datafile "reducO3" "clangO3"
datafile "reducOfast" "clangOfast"
make clean

# make opti CC=icc
# datafile "reducO1" "iccO1"
# datafile "reducO2" "iccO2"
# datafile "reducO3" "iccO3"
# datafile "reducOfast" "iccOfast"
# make clean

# make opti CC=icx
# datafile "reducO1" "icxO1"
# datafile "reducO2" "icxO2"
# datafile "reducO3" "icxO3"
# datafile "reducOfast" "icxOfast"
# make clean

#Question 5, gnuplot