set terminal png enhanced font "arial,20" fontscale 1.0 size 2000, 2000 
set output "icc.png"
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

set multiplot layout 2,3 rowsfirst title "icc" textcolor "black"

set title "iccO0" textcolor "black"
plot "iccO0.dat" u  12:xtic(1) lc "red" notitle

set title "iccO1" textcolor "black"
plot "iccO1.dat" u  12:xtic(1) lc "blue" notitle

set title "iccO2" textcolor "black"
plot "iccO2.dat" u  12:xtic(1) lc "green" notitle

set title "iccO3" textcolor "black"
plot "iccO3.dat" u  12:xtic(1) lc "yellow" notitle

set title "iccOfast" textcolor "black"
plot "iccOfast.dat" u  12:xtic(1) lc "purple" notitle

unset multiplot