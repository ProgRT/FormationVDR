figname = 'resistances'
load '../cfg/cfg1.cfg'

set linetype 1 lw 1
set linetype 1 lw 1

set multiplot layout 1,2

set ylabel 'Pcirc (mbar)'
set xlabel 'Temps (s)'

set xrange [0:6]
set yrange [0:45]

stat '../data/Raw9.dat' u 'time':'Pao' name 'Raw9' nooutput
stat '../data/Raw6.dat' u 'time':'Pao' name 'Raw6' nooutput

set title 'Résistances normales'
#set title 'A'
plot '../data/Raw6.dat' using 'time':'Pao', Raw6_max_y

set ylabel

set title 'Résistances augmentées'
#set title 'B'
plot '../data/Raw9.dat' using 'time':'Pao', Raw9_max_y
