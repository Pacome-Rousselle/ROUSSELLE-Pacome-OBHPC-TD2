set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "versions.png"
set title "Separate plots for version per optimization flags"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 1.5 absolute

set yrange [0:750]
set xtic rotate by -45 scale 0 

set multiplot layout 2,3 rowsfirst title "Versions" textcolor "black"

set title "ijk" textcolor "black"
plot "ijk.dat" u  11:xtic(1) lc "red" notitle

set title "ikj" textcolor "black"
plot "ikj.dat" u  11:xtic(1) lc "blue" notitle

set title "iex" textcolor "black"
plot "iex.dat" u  11:xtic(1) lc "green" notitle

set title "unroll4" textcolor "black"
plot "unroll4.dat" u  11:xtic(1) lc "yellow" notitle

set title "unroll8" textcolor "black"
plot "unroll8.dat" u  11:xtic(1) lc "purple" notitle

set title "cblas" textcolor "black"
plot "cblas.dat" u  11:xtic(1) lc "black" notitle

unset multiplot
