figname='test'
load '../cfg/cfg1.cfg'

set key top right outside opaque
plot for [i = 1:8] sin(x) - i lc i lw 2 title ''.i
