#
figname = 'Amplitude'
load '../cfg/cfg1.cfg'

set ylabel 'Pova (cmH_{2}O)'
set xlabel 'Temps (s)'

stat '../data/simvent.dat' using 'time':'Pao' name 'INSPI' nooutput
stat [5.25:6]'../data/simvent.dat' using 'time':'Pao' name 'EXPI' nooutput

set arrow from 1,0 to 1,INSPI_max_y as 1
set label "DEBIT\nPULSE" font "Arial, Bold" center at .5,25

set arrow from 5,INSPI_max_y to 5,EXPI_max_y as 1
set label "CPAP\nOSCILLANTE" font "Arial, Bold" center at 4.5,25

plot [0:6] '../data/simvent.dat' using 'time':'Pao',\
		[4:6] EXPI_max_y ls 2,\
		[:6] INSPI_max_y ls 2
