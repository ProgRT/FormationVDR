reset
figname = 'Palv'
load '../cfg/cfg1.cfg'

set ylabel 'Pression (cmH_{2}O)'
set xlabel 'Temps (s)'

set key top right
set xrange [0:6]

plot '../data/simvent.dat' u 'time':'Pao' title 'Pova', '../data/simvent.dat' u 'time':'Palv'
