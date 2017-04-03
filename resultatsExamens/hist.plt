set terminal svg
set output 'e1.svg'
set style data histogram
set style fill solid border -1

unset xtics
#set grid ytics mytics lw 1, lw .4
set grid
set mytics 2
set title "Résultats à l'examen théorique" font ',16pt'
set yrange [0:100]
stat 'et1.dat' u ($1 * 100/22)
plot STATS_mean lt 2 title 'Moyenne', 'et1.dat' u ($1 * 100/22)lt 4 title ''
