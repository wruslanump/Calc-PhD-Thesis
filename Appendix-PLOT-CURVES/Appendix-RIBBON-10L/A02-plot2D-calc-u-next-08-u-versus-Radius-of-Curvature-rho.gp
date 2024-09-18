
## File: plot2D-calc-u-next-08-u-versus-rho.gp

clear
set size square
set autoscale
set grid


## 07-SPIRAL EPSILON
## set yrange [ 0.00000099 : 0.000001005]  
## set yrange [ +9.930E-07   : +1.001E-6]


## TWO CURVES IN ONE PLOT HAHAHA
## ================================================    
## BEGIN
    
set xlabel "parameter u"

set title  "Plot 2D (u, rho(u)) Radius of Curvature for parametric curve" 

set xrange [ 0.0 :  + 1.0]   
set yrange [ -10 : 60]  
set ytics 10 nomirror tc lt 1
set ylabel "Radius of Curvature rho(u) (mm)"


## set x2range [ 0.0 :  + 1.0]  
## set logscale y2 10
## set format y2 "%5.sx10^{%T}"
## set y2tics 1E+3 nomirror tc lt 2
## set y2label "Log 10 Radius of Curvature rho(u)"
## set y2range [ 1  : 1E+9]    # DEFAULT

  
plot    "FC20-Ribbon-10L-L018-data_calc_u_next.txt" using 2:12  axes x1y1 with lines lt 1 lw 2 title "(u, rho(u))" 
## replot  "FC20-Ribbon-10L-L018-data_calc_u_next.txt" using 2:12  axes x2y2 with lines lt 2 lw 2 title "Log 10 view (u, rho(u))" 


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
# eps[11]   ABOUT 0.000000621355
# rho[12] 
# curr_tang_accn[13] 
# curr_frate[14] 
# frate_limit[15] 
# x_frate[16] 
# y_frate17]

# DTStamp_FHdata_calc_u_next 2022-06-23 12:23:39 179309410 

# EXECUTION
# gnuplot -p plot2D_calc_u_next_00_u_versus_u_next.gp


