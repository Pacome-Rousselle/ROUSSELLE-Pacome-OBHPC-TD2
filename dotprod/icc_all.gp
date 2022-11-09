set terminal png enhanced font "arial,15" fontscale 1.0 size 1000, 1000 
set output "icc_all.png"
set title "Comparative histograms for icc compilation flags per versions"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0 

plot "iccO0.dat" u  12:xtic(1) t "iccO0" lc "red",\
     "iccO1.dat" u  12:xtic(1) t "iccO1" lc "blue",\
     "iccO2.dat" u  12:xtic(1) t "iccO2" lc "green",\
     "iccO3.dat" u  12:xtic(1) t "iccO3" lc "yellow",\
     "iccOfast.dat" u  12:xtic(1) t "iccOfast" lc "purple"