figname='Pmotrice'
load '../cfg/cfg1.cfg'

set ylabel 'Pova (cmH_{2}O)'
set xlabel 'Temps (s)'

stat [3:4]'../data/simvent.dat' using 'time':'Pao' name 'INSPI' nooutput
stat [1:2]'../data/simvent.dat' using 'time':'Pao' name 'EXPI' nooutput

set arrow from 1.8,EXPI_mean_y to 1.8, INSPI_mean_y as 1

set xrange [0:6]

set label "P_{motrice}" center at 1.3,13

plot '../data/simvent.dat' using 'time':'Pao',\
		EXPI_mean_y lc 2,\
		INSPI_mean_y lc 2
