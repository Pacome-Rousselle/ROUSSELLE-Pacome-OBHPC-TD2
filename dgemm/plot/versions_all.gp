set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "versions_all.png"
set title "Comparative histograms of dgemm versions per optimization flags"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:750]
set xtic rotate by -45 scale 0

set title "Comparative histograms of dgemm versions per optimization flags" textcolor "black"
plot "ijk.dat" u  11:xtic(1) t "ijk" lc "red",\
     "ikj.dat" u  11:xtic(1) t "ikj" lc "blue",\
     "iex.dat" u  11:xtic(1) t "ikj" lc "green",\
     "unroll4.dat" u  11:xtic(1) t "unroll4" lc "yellow",\
     "unroll8.dat" u  11:xtic(1) t "unroll8" lc "purple",\
     "cblas.dat" u  11:xtic(1) t "cblas" lc "black" 