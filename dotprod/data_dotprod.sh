#!/bin/bash

ver="versions"
CC="compilers"
img="graphs"

rm -rf $ver $CC $img
mkdir $ver $CC $img

for file in $(ls *.dat); do
  grep "BASE" "$file" >> "$ver/base.dat" 
  sed -i "s/BASE/${file%%.dat}/g" "$ver/base.dat"

  grep "UNROLL8" "$file" >> "$ver/unroll8.dat" 
  sed -i "s/UNROLL8/${file%%.dat}/g" "$ver/unroll8.dat"

  grep "CBLAS" "$file" >> "$ver/cblas.dat" 
  sed -i "s/CBLAS/${file%%.dat}/g" "$ver/cblas.dat"

  tail -n +2 "$file" > "$file.tmp" && mv "$file.tmp" "$file"
  mv $file $CC
done 

#GNUPLOT
cp versions.gp $ver; cp versions_all.gp $ver
cp gcc.gp $CC; cp clang.gp $CC
cp gcc_all.gp $CC; cp clang_all.gp $CC

cd $ver; gnuplot versions.gp; gnuplot versions_all.gp
mv *.png ..
rm -f *.gp 
cd ..

cd $CC
gnuplot gcc.gp; gnuplot clang.gp; 
gnuplot gcc_all.gp; gnuplot clang_all.gp; 

mv *.png ..
rm -f *.gp
cd ..

mv *.png $img