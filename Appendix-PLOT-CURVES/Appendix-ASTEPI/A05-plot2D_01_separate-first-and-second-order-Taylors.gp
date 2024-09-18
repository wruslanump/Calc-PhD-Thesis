
## FILE: plot3D_01_data_curve_cposition_xpos_ypos_u.gp

clear
set size square
set autoscale
set grid

set xlabel "parameter (u)"
set ylabel "first-order and second-order Taylors-approx(u)"
set title "Plot2D curve (u) vs first and second order Taylors-approx(u)"

## set yrange [ * : *]
set yrange [0 : 0.0003]
set xrange [0.0 : 1.0]


plot   "FC20-AstEpi-L018-data_calc_u_next.txt" using 2:5 with lines linewidth 2 title "first-order(u)" 
replot "FC20-AstEpi-L018-data_calc_u_next.txt" using 2:6 with lines linewidth 2 title "second-order(u)" 


## 3D-PLOT AstEpi CHECK
## splot "data_calc_u_next.txt" using 8:9:2 with lines linecolor black linewidth 2 title "u-direction" 

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
