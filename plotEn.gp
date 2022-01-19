set terminal png
set output "En.png"
set title ' En(x)'
set xlabel 'Time'
set ylabel 'En(x)'
set yrange [0:1.5]


set key top right

plot 'n1.dat' with l title "E1" smooth bezier, 'n2.dat' with l title "E2" smooth bezier, 'n3.dat' with l title "E3" smooth bezier, 'n4.dat' with l title "E4" smooth bezier, 'n5.dat' with l title "E5" smooth bezier