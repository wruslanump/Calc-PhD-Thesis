
## FILE: plot3D_01_data_curve_cposition_xpos_ypos_u.gp

clear
set size square
set autoscale
set grid




## TWO CURVES IN ONE PLOT HAHAHA
## ================================================    
## BEGIN
    
set title "Plot2D Curve parameter (u) versus chord-error eps(u)"

set xrange [ 0.0 :  + 1.0]   
set format y "%1.2sx10^{%T}"
set yrange [ 1E-8 : 1.2E-6]  
set ytics 1.0E-7 nomirror tc lt 1

set xlabel "parameter (u)"
set ylabel "Chord-error eps(u)"
set xlabel "parameter (u)"
set ylabel "Chord-error eps(u)"

set x2range [ 0.0 :  + 1.0]  
set y2range [ +9.9E-7 : +1.005E-6]  
set format y2 "%1.3sx10^{%T}"   
set y2tics 0.01E-7  nomirror tc lt 2
set y2label "Close View Chord-error eps(u)"  
    

plot   "FC20-Butterfly-L018-data_calc_u_next.txt" using 2:11 axes x1y1 with lines lw 2 title "(u, eps(u))" 
replot "FC20-Butterfly-L018-data_calc_u_next.txt" using 2:11 axes x2y2 with lines lt 2 lw 2 title "close view (u, eps(u)" 



## END
## ==============================================

# DATA COLUMNS INDEX = COLUMN NUMBER
# rtime[1] 
# u[2] 
# u_next[3] 
# t_interpol[4] 
# first_order[5] 
# second_order[6] 
# diff[7] 
# pos_x[8] 
# pos_y[9]
# pos_r[10] 
# eps[11] chord-error
# rho[12] radius of curvature 
# curr_tang_accn[13] 
# curr_frate[14] 
# frate_limit[15] 
# x_frate[16] 
# y_frate[17] 
# frate_command[18], 
# diff_frate[19]

# ALHAN DULILLAH 3 TIMES.
