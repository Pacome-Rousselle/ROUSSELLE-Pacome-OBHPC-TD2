#!/bin/bash

directory="datafiles"
rm -rf $directory
mkdir $directory

for file in $(ls *.dat); do
  grep "IJK" "$file" >> "$directory/ijk.dat" 
  sed -i "s/IJK/${file%%.dat}/g" "$directory/ijk.dat"

  grep "IKJ" "$file" >> "$directory/ikj.dat" 
  sed -i "s/IKJ/${file%%.dat}/g" "$directory/ikj.dat"

  grep "IEX" "$file" >> "$directory/iex.dat" 
  sed -i "s/IEX/${file%%.dat}/g" "$directory/iex.dat"
  
  grep "UNROLL4" "$file" >> "$directory/unroll4.dat" 
  sed -i "s/UNROLL4/${file%%.dat}/g" "$directory/unroll4.dat"

  grep "UNROLL8" "$file" >> "$directory/unroll8.dat" 
  sed -i "s/UNROLL8/${file%%.dat}/g" "$directory/unroll8.dat"

  grep "CBLAS" "$file" >> "$directory/cblas.dat" 
  sed -i "s/CBLAS/${file%%.dat}/g" "$directory/cblas.dat"

  rm $file
done 