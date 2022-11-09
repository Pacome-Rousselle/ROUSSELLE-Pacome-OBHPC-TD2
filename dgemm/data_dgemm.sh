#!/bin/bash

ver="versions"
CC="compilers"
img="graphs"

rm -rf $ver $CC $img
mkdir $ver $CC $img

for file in $(ls *.dat); do
  grep "IJK" "$file" >> "$ver/ijk.dat" 
  sed -i "s/IJK/${file%%.dat}/g" "$ver/ijk.dat"

  grep "IKJ" "$file" >> "$ver/ikj.dat" 
  sed -i "s/IKJ/${file%%.dat}/g" "$ver/ikj.dat"

  grep "IEX" "$file" >> "$ver/iex.dat" 
  sed -i "s/IEX/${file%%.dat}/g" "$ver/iex.dat"
  
  grep "UNROLL4" "$file" >> "$ver/unroll4.dat" 
  sed -i "s/UNROLL4/${file%%.dat}/g" "$ver/unroll4.dat"

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

# cp icc.gp $CC; cp icx.gp $CC
# cp icc_all.gp $CC; cp icx_all.gp $CC

cd $ver; gnuplot versions.gp; gnuplot versions_all.gp
mv *.png ..
rm -f *.gp 
cd ..

cd $CC
gnuplot gcc.gp; gnuplot clang.gp; 
gnuplot gcc_all.gp; gnuplot clang_all.gp; 

# gnuplot icc.gp; gnuplot icx.gp; 
# gnuplot icc_all.gp; gnuplot icx_all.gp; 

mv *.png ..
rm -f *.gp
cd ..

mv *.png $img