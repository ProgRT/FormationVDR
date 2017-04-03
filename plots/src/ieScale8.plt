figname = 'ieScale8'
load '~/FormationVDR/plots/cfg/image.cfg'

sourceX = 8
sourceY = 60

set xtics 2
source = '../data/329.jpg'
stat source binary filetype=jpg nooutput
DX = sourceX/STATS_size_x
DY = sourceY/STATS_size_y
plot source binary filetype=jpg dx=DX dy=DY with rgbimage

source = '../data/629.jpg'
stat source binary filetype=jpg nooutput
DX = sourceX/STATS_size_x
DY = sourceY/STATS_size_y
plot source binary filetype=jpg dx=DX dy=DY with rgbimage
