set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "gcc.png"
set title "Separate plots for gcc optimization flags per reduc version"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 1.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0  

set multiplot layout 2,3 rowsfirst title "Separate plots for gcc optimization flags per reduc version" textcolor "black"

set title "gccO0" textcolor "black"
plot "gccO0.dat" u  12:xtic(1) lc "red" notitle

set title "gccO1" textcolor "black"
plot "gccO1.dat" u  12:xtic(1) lc "blue" notitle

set title "gccO2" textcolor "black"
plot "gccO2.dat" u  12:xtic(1) lc "green" notitle

set title "gccO3" textcolor "black"
plot "gccO3.dat" u  12:xtic(1) lc "yellow" notitle

set title "gccOfast" textcolor "black"
plot "gccOfast.dat" u  12:xtic(1) lc "purple" notitle

unset multiplot
