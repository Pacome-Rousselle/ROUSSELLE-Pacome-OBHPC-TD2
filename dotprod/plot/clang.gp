set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "clang.png"
set title "Separate plots for clang optimization flags per dotprod version"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 1.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0 

set multiplot layout 2,3 rowsfirst title "Separate plots for clang optimization flags per dotprod version" textcolor "black"

set title "clangO0" textcolor "black"
plot "clangO0.dat" u  12:xtic(1) lc "red" notitle

set title "clangO1" textcolor "black"
plot "clangO1.dat" u  12:xtic(1) lc "blue" notitle

set title "clangO2" textcolor "black"
plot "clangO2.dat" u  12:xtic(1) lc "green" notitle

set title "clangO3" textcolor "black"
plot "clangO3.dat" u  12:xtic(1) lc "yellow" notitle

set title "clangOfast" textcolor "black"
plot "clangOfast.dat" u  12:xtic(1) lc "purple" notitle

unset multiplot