set terminal png enhanced font "arial,15" fontscale 1.0 size 1000, 1000 
set output "clang_all.png"
set title "Comparative histograms for clang compilation flags per versions"

set datafile separator ";"
set grid
set auto x

set ylabel "MiB/s" textcolor "black"

set style data histogram
set style fill solid border -1
set boxwidth 0.5 absolute

set yrange [0:50000]
set xtic rotate by -45 scale 0 

plot "clangO0.dat" u  12:xtic(1) t "clangO0" lc "red",\
     "clangO1.dat" u  12:xtic(1) t "clangO1" lc "blue",\
     "clangO2.dat" u  12:xtic(1) t "clangO2" lc "green",\
     "clangO3.dat" u  12:xtic(1) t "clangO3" lc "yellow",\
     "clangOfast.dat" u  12:xtic(1) t "clangOfast" lc "purple"
