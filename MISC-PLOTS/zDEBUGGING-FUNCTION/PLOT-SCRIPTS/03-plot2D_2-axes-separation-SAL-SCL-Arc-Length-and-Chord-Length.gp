
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
    
set title "Plot2D curve (u) vs Teardrop Diff (SAL - SCL) for FC10, FC20, FC30, and FC40"

set xrange [ 0.0 :  + 1.0]   
set yrange [ 0.0000 : 0.016]  

set x2range [ 0.0 :  + 1.0]  
set y2range [ 0.0000 : 0.014]  

set ytics 0.001    nomirror tc lt 1
set ylabel "Diff (SAL-SCL) FC10, FC20, FC30"

set y2tics 0.001   nomirror tc lt 2
set y2label "Diff (SAL-SCL) FC40"
    
## USING 2 SCALES 
## LEFT SCALE 3
  plot "data-anomaly-FC10-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "magenta" lt 1 lw 2 title "FC10 Diff (SAL-SCL)" 
replot "data-anomaly-FC20-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "blue"    lt 1 lw 2 title "FC20 Diff (SAL-SCL)" 
replot "data-anomaly-FC30-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "red"     lt 1 lw 2 title "FC30 Diff (SAL-SCL)" 
## RIGHT SCALE 1 
replot "data-anomaly-FC40-Teardrop-L018-data_01.txt" using 4:15 axes x2y2 with lines  lc "turquoise"   lt 2 lw 2 title "FC40 Diff (SAL-SCL)" 

## USING 1 SCALE FOR ALL (CANNOT SEPARATE)
##   plot "data-anomaly-FC10-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "magenta" lt 1 lw 2 title "FC10 Diff (SAL-SCL)" 
## replot "data-anomaly-FC20-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "blue"    lt 1 lw 2 title "FC20 Diff (SAL-SCL)" 
## replot "data-anomaly-FC30-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "red"     lt 1 lw 2 title "FC30 Diff (SAL-SCL)" 
## replot "data-anomaly-FC40-Teardrop-L018-data_01.txt" using 4:15 axes x1y1 with lines  lc "turquoise"   lt 1 lw 2 title "FC40 Diff (SAL-SCL)" 





## END
## ==============================================

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


