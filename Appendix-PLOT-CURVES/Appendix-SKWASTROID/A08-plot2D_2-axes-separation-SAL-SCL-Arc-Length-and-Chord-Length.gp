
## FILE: plot3D_01_data_curve_cposition_xpos_ypos_u.gp

clear
set size square
set autoscale
set grid

set xlabel "parameter (u)"
set ylabel "SAL(u) and SCL(u) (mm)"



## TWO CURVES IN ONE PLOT HAHAHA
## ================================================    
## BEGIN
    
set title "Plot2D curve (u) vs Sum-Arc-Length SAL(u) and Sum-Chord-Length SCL(u)"

set xrange [ 0.0 :  + 1.0]   
set yrange [ 0.00 : 1400.00]  

set x2range [ 0.0 :  + 1.0]  
set y2range [ 0.0 : 1400.00]  

set ytics 100 nomirror tc lt 1
set ylabel "Sum-Arc-Length SAL(u)"

set y2tics 100   nomirror tc lt 2
set y2label "Sum-Chord-Length SCL(u)"
    
plot "FC20-SkwAstroid-L018-data_01.txt" using 4:11 axes x1y1 with lines lt 1 lw 2 title "SAL(u)" ,  "FC20-SkwAstroid-L018-data_01.txt" using 4:13 axes x2y2 with lines lt 2 lw 2 title "SCL(u)" 
 


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
