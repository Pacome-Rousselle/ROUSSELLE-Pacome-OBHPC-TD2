#!/bin/bash

directory="datafiles"
rm -rf $directory
mkdir $directory

for file in $(ls *.dat); do
  grep "BASE" "$file" >> "$directory/base.dat" 
  sed -i "s/BASE/${file%%.dat}/g" "$directory/base.dat"

  grep "UNROLL8" "$file" >> "$directory/unroll8.dat" 
  sed -i "s/UNROLL8/${file%%.dat}/g" "$directory/unroll8.dat"

  grep "CBLAS" "$file" >> "$directory/cblas.dat" 
  sed -i "s/CBLAS/${file%%.dat}/g" "$directory/cblas.dat"

  rm $file
done 