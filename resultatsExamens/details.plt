set terminal svg
set output 'details.svg'
set style data histogram
set style fill solid border -1

#set grid ytics mytics lw 1, lw .4
set grid
set mytics 2
set yrange [0:]
set title "Résultats à l'examen théorique" font ',16pt'
plot 'details.dat' u (($3+$4+$5+$6+$7+$8)/$2):xticlabel(1) lt 4 title ''
