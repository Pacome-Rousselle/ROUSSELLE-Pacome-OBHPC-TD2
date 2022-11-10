set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "icx.png"
set title "Separate plots for clang optimization flags"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 1.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0  

set multiplot layout 2,3 rowsfirst title "icx" textcolor "black"

set title "icxO0" textcolor "black"
plot "icxO0.dat" u  12:xtic(1) lc "red" notitle

set title "icxO1" textcolor "black"
plot "icxO1.dat" u  12:xtic(1) lc "blue" notitle

set title "icxO2" textcolor "black"
plot "icxO2.dat" u  12:xtic(1) lc "green" notitle

set title "icxO3" textcolor "black"
plot "icxO3.dat" u  12:xtic(1) lc "yellow" notitle

set title "icxOfast" textcolor "black"
plot "icxOfast.dat" u  12:xtic(1) lc "purple" notitle

unset multiplot