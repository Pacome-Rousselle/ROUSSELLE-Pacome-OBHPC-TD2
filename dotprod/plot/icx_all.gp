set terminal png enhanced font "arial,15" fontscale 1.0 size 1000, 1000 
set output "icx_all.png"
set title "Comparative histograms for icx compilation flags per versions"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0 

plot "icxO0.dat" u  12:xtic(1) t "icxO0" lc "red",\
     "icxO1.dat" u  12:xtic(1) t "icxO1" lc "blue",\
     "icxO2.dat" u  12:xtic(1) t "icxO2" lc "green",\
     "icxO3.dat" u  12:xtic(1) t "icxO3" lc "yellow",\
     "icxOfast.dat" u  12:xtic(1) t "icxOfast" lc "purple"