#! /bin/bash

python calc_functions.py
awk '{print $1, -1/3*$3+0.5*$4, $4-1.5*$5, -1/3*$5+0.5*$6, (-1/3*$5+0.5*$6)/(-1/3*$3+0.5*$4)} ' En.dat > fun.dat
gnuplot plotfun.gp
gnuplot plotEn.gp
gnuplot plotkj.gp