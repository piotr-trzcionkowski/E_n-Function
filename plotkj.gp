set terminal png
set output "KJ.png"
set xlabel 'Time'
set ylabel 'En(x)'
set yrange [-15:3]


set key top right

plot 'fun.dat' u 1:5 with l title "K'-K/J'-J" smooth bezier