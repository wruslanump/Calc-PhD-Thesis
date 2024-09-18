
## FILE: plot3D_01_data_curve_cposition_xpos_ypos_u.gp

clear
set size square
set autoscale
set grid

set xlabel "parameter (u)"
set ylabel "Difference (SAL(u) - SCL(u)) (mm)"
set title "Plot2D curve (u) vs Difference (SAL(u) - SCL(u))"

set xrange [0.0 : 1.0]
set yrange [-0.005 : 0.014]


 
  plot "data-anomaly-FC40-Teardrop-L018-data_01.txt" using 4:15 with lines lc "black" linewidth 2 title "FC40 DIFF (SAL - SCL)" 
## replot "data-anomaly-FC30-Teardrop-L018-data_01.txt" using 4:15 with lines lc "red"   linewidth 2 title "FC30 DIFF (SAL - SCL)" 
## replot "data-anomaly-FC20-Teardrop-L018-data_01.txt" using 4:15 with lines            linewidth 2 title "FC20 DIFF (SAL - SCL)" 
## replot "data-anomaly-FC10-Teardrop-L018-data_01.txt" using 4:15 with lines            linewidth 2 title "FC10 DIFF (SAL - SCL)" 


## 3D-PLOT TEARDROP CHECK
## splot "data_calc_u_next.txt" using 8:9:2 with lines linecolor black linewidth 2 title "u-direction" 

# DATA COLUMNS INDEX = COLUMN NUMBER
##  [1]FC30-L0.18-A28-TEARDROP
##  [2]ALHAMDULILLAH 
##  [3]RTIME 0.000 
##  [4]U 0.000000000000 
##  [5]NEXT-U 0.000137279929  
##  [6]NAL= 
##  [7]2.912147069980e-02 
##  [8]NCL= 
##  [9]2.911347593614e-02  
##  [10]SAL= 
##  [11]2.912147069980e-02 
##  [12]SCL= 
##  [13]2.911347593614e-02  
##  [14]DAC= 
##  [15]0.000000000000e+00  
##  [16]PDAC= 
##  [17]0.000000000000e+00  
##  [18]NAT= 
##  [19]0.000000000000e+00 
##  [20]SAT= 
##  [21]0.000000000000e+00  
##  [22]NAA= 
##  [23]0.000000000000e+00 
##  [24]SAA=
##  [25]0.000000000000e+00


# ALHAMDULILLAH 3 TIMES.


