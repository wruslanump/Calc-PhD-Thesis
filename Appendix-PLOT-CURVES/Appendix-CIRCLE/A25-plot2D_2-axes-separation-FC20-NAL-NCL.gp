

clear
set size square
set autoscale
set grid

set xlabel "parameter (u)"
set ylabel "NAL(u) and NCL(u)"



## TWO CURVES IN ONE PLOT SEPARATION HAHAHA
## ================================================    
## BEGIN
    
set title "Plot2D curve (u) vs Next-Arc-Length (NAL) and Next-Chord-Length (NCL)"

set xrange [ 0.0 :  + 1.0]   
set yrange [-0.010 : 0.040]  # BASE NAL
## set yrange [ * : * ]  

set x2range [ 0.0 :  + 1.0]  
## set y2range [ 0.000 : 0.050]  # NO SEPARATION
set y2range [ 0.000 : 0.050]  # WITH SEPARATION 

## set y2range [ * : * ]  

set ytics 0.005 nomirror tc lt 1
set ylabel "NAL(u) Next-Arc-Length (mm)"

set y2tics 0.005   nomirror tc lt 2
set y2label "NCL(u) Next-Chord-Length (mm)"

 
plot "FC20-Circle-L018-data_01.txt" using 4:7 axes x1y1 with lines lt 1 lw 2 title "FC20 NAL(u)" ,  "FC20-Circle-L018-data_01.txt" using 4:9 axes x2y2 with lines lt 2 lw 2 title "FC20 NCL(u)" 


## END
## ==============================================

# DATA COLUMNS INDEX = COLUMN NUMBER
# [1] FC40-L0.18-A28-TEARDROP
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



