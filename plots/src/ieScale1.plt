figname = 'ieScale1'
load '../cfg/image.cfg'

sourceX = 1
sourceY = 60

set xtics 0.25
source = '../data/509.jpg'
stat source binary filetype=jpg nooutput
DX = sourceX/STATS_size_x
DY = sourceY/STATS_size_y
plot source binary filetype=jpg dx=DX dy=DY with rgbimage

source = '../data/828.jpg'
stat source binary filetype=jpg nooutput
DX = sourceX/STATS_size_x
DY = sourceY/STATS_size_y
plot source binary filetype=jpg dx=DX dy=DY with rgbimage
