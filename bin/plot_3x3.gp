set terminal pngcairo
set output 'data/3x3.png'
set title '3x3'

set style line 1 lw 2 pt 6 lc rgb "#00aaaa"
set style line 11 lc rgb '#808080' lt 1 lw 3
set border 0 back ls 11
set tics out nomirror
set style line 12 lc rgb '#808080' lt 0 lw 1

set grid back ls 12

set xlabel '#try'
set ylabel '(sec)'
set yrange [0:]

plot '/tmp/data' u 0:($2 / 1000) w p linestyle 1 not, \
     '/tmp/data' u 0:($2 / 1000) w lp linestyle 1 not smooth bezier

# vim: set ft=gnuplot:
