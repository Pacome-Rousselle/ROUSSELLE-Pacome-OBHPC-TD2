#Presentation here
data_size="100 50"
directory="datafiles"

function datafile {
    ./$1 $data_size > $2.dat
    grep -w "IJK" $2.dat >> $directory"/ijk.dat"
    grep -w "IKJ" $2.dat >> $directory"/ikj.dat"
    grep -w "IEX" $2.dat >> $directory"/iex.dat"
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
datafile "dgemm" "gccO0"
make clean

make CC=clang
datafile "dgemm" "clangO0"
make clean

# make CC=icc
# datafile "dgemm" "iccO0"
# make clean

# make CC=icx
# datafile "dgemm" "icxO0"
# make clean

#Question 2-3, optflags
make opti CC=gcc
datafile "dgemmO1" "gccO1"
datafile "dgemmO2" "gccO2"
datafile "dgemmO3" "gccO3"
datafile "dgemmOfast" "gccOfast"
make clean

make opti CC=clang
datafile "dgemmO1" "clangO1"
datafile "dgemmO2" "clangO2"
datafile "dgemmO3" "clangO3"
datafile "dgemmOfast" "clangOfast"
make clean

# make opti CC=icc
# datafile "dgemmO1" "iccO1"
# datafile "dgemmO2" "iccO2"
# datafile "dgemmO3" "iccO3"
# datafile "dgemmOfast" "iccOfast"
# make clean

# make opti CC=icx
# datafile "dgemmO1" "icxO1"
# datafile "dgemmO2" "icxO2"
# datafile "dgemmO3" "icxO3"
# datafile "dgemmOfast" "icxOfast"
# make clean

#Question 5, gnuplot