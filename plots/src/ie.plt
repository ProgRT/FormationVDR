figname = 'ie'
load '../cfg/image.cfg'

sourceX = 1
sourceY = 60

set xtics 0.25
source = '../data/509.jpg'
# Fperc = 520/min (8.7Hz)
stat source binary filetype=jpg nooutput
DX = sourceX/STATS_size_x
DY = sourceY/STATS_size_y

iStart = .32
ti=.065
tcycle= .115

arrowY = 50

set arrow from iStart,0 to iStart,60 front lc 2 lw 3 nohead
set arrow from iStart + ti,0 to iStart + ti,60 front lc 2 lw 3 nohead
set arrow from iStart + tcycle,0 to iStart + tcycle,60 front lc 2 lw 3 nohead

set arrow heads from iStart,arrowY to iStart + ti,arrowY front lc 3 lw 3
set label
set arrow heads from iStart + ti ,arrowY to iStart + tcycle,arrowY front lc 3 lw 3

plot [0:.75]source binary filetype=jpg dx=DX dy=DY with rgbimage, x=.35
