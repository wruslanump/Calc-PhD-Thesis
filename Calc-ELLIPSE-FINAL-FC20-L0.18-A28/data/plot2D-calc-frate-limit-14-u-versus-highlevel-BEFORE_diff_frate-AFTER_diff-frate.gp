
## File: plot2D-calc-frate-limit-14-u-versus-BEFORE_diff_frate-AFTER_diff_frate.gp

clear
set size square
set autoscale
set grid

set xlabel "parameter u"
set ylabel "diff-rate (mm/s)"

set title  "Plot 2D (u,frate) Highlevel - before and after adjustment CurrFrate to FrateLimit" 

## set title  "plot2D-calc-frate-limit-14-u-versus-BEFORE-diff-frate-AFTER-diff-frate.gp"

## NOTE: BEFORE - Negative diff means (frate_limit < curr_frate)
## NOTE: AFTER  - Positive diff means (frate_limit > curr_frate) (TARGET)
## double  BEFORE_diff_frate = (frate_limit - curr_frate);
## double  AFTER_diff_frate =  (frate_limit - curr_frate);

# COMMENT RANGES FOR DEFAULT
set xrange [ 0.0 : +1.0]
set yrange [ -1.50E-2 : +1.50E-2] 


## PLOT CHECK (NOTICE DIFFERENT DATA FILES)
plot     "data_calc_frate_limit.txt" using 2:10 with lines title "diff before-adj (-ve) = (fratelimit < currfrate)" 
replot   "data_calc_u_next.txt" using 2:19 with lines      title "diff after-adj (+ve) = (fratelimit > currfrate)"


# DATA COLUMNS INDEX = COLUMN NUMBER
# rtime[1], 
# u[2], 
# u_next[3], 
# FRate_limit_1[4], 
# FRate_limit_2[5], 
# FRate_limit_3[6], 
# FRate_limit_4[7], 
# FRate_limit[8], 
# eps_N[9], 
# rho_N[10] 

# DTStamp_FHdata_calc_u_next 2022-06-23 12:23:39 179309410 

# EXECUTION
# gnuplot -p plot2D_calc_u_next_00_u_versus_u_next.gp


