

clear
set size square
set autoscale
set grid


## TWO CURVES IN ONE PLOT SEPARATIN HAHAHA
## ================================================    
## BEGIN
    
set title "Plot2D curve (u) vs Difference (SAL - SCL) for FC10, FC20, FC30 and FC40"

set xlabel "parameter (u)"
set xrange [ 0.0 :  + 1.0]   
## set xtics 0.10 
set yrange [ 0 : 400 ]

# set yrange [ 0.000 : 0.014]  # BASE (SAL - SCL)
## set yrange [ -2E-6 : 1E-5 ]  # DEFAULT

## set yrange [ * : * ]  # DEFAULT

## TWO-AXES LEFT AND RIGHT
## ======================================
    
plot   "FC10-AstEpi-L018-data_01.txt" using 4:15 with lines lw 2 title "FC10 Diff DAC(u)" 
replot "FC20-AstEpi-L018-data_01.txt" using 4:15 with lines lw 2 title "FC20 Diff DAC(u)" 
replot "FC30-AstEpi-L018-data_01.txt" using 4:15 with lines lw 2 title "FC30 Diff DAC(u)"   
replot "FC40-AstEpi-L018-data_01.txt" using 4:15 with lines lw 2 title "FC40 Diff DAC(u)" 


## END
## ==============================================

# DATA COLUMNS INDEX = COLUMN NUMBER
# [1] FC40-L0.18-A28-AstEpi
# [2] ALHAMDULILLAH   
# [3] RTIME 0.000 
# [4] U 0.000000000000 
# [5] NEXT-U 0.000137237619  
# [6] NAL= 
# [7] 2.911249537723e-02 
# [8] NCL= 
# [9] 2.910450554058e-02  
# [10] SAL= 
# [11] 2.911249537723e-02 
# [12] SCL= 
# [13] 2.910450554058e-02  
# [14] DAC= 
# [15] 7.989836652001e-06  
# [16] PDAC= 
# [17] 0.000000000000e+00  
# [18] NAT= 
# [19] 0.000000000000e+00 
# [20] SAT= 
# [21] 0.000000000000e+00  
# [22] NAA= 
# [23] 0.000000000000e+00 
# [24] SAA= 
# [25] 0.000000000000e+00 

# ALHAMDULILLAH 3 TIMES.



