set terminal png
set output "Funkcje.png"
set xlabel 'Time'
set ylabel 'En(x)'
#set yrange [-0.08:0.02]


set key top right

plot 'fun.dat' u 1:2 with l title "J'-J" smooth bezier, 'fun.dat' u 1:3 with l title "H'-H" smooth bezier, 'fun.dat' u 1:4 with l title "K'-K" smooth bezier, 
#'fun.dat' u 1:5 with l title "K'-K/J'-J" smooth bezier