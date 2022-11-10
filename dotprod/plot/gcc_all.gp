set terminal png enhanced font "arial,15" fontscale 1.0 size 1000, 1000 
set output "gcc_all.png"
set title "Comparative histograms for gcc optimization flags per dotprod version"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0 

plot "gccO0.dat" u  12:xtic(1) t "gccO0" lc "red",\
     "gccO1.dat" u  12:xtic(1) t "gccO1" lc "blue",\
     "gccO2.dat" u  12:xtic(1) t "gccO2" lc "green",\
     "gccO3.dat" u  12:xtic(1) t "gccO3" lc "yellow",\
     "gccOfast.dat" u  12:xtic(1) t "gccOfast" lc "purple"