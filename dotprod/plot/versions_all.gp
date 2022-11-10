set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "versions_all.png"
set title "Comparative histograms of dotprod versions per optimization flags"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0

set title "Comparative histograms of dotprod versions per optimization flags" textcolor "black"
plot "base.dat" u  12:xtic(1) t "base" lc "red",\
     "unroll8.dat" u  12:xtic(1) t "unroll8" lc "blue"