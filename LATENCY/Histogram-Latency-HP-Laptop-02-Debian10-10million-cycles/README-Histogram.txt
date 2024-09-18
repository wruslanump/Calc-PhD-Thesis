
(Step 1) Open and edit the bash file sudo-run-mklatencyplot.sh
Change the cyclic test parameters l100,000,000 (100 million) cycles to somthing reasonable.

1,000,000   (1 million) about 3 minutes.
10,000,000  (10 million) about 30 minutes.
100,000,000 (100 million) about 300 minutes = 5 hours.

(Step 2) Run the bash file with sudo (root) rights.
$ wruslan@HP-Laptop-01-ub20:~/opt/rt-tests-2.4/Histogram$ sudo ./sudo-run-mklatencyplot.sh

Fri 13 Oct 2023 04:34:12 PM +08
# Bismillah 3 times WRY
# 1. Run cyclictest version 2.4 x86_64 
     sudo /home/wruslan/opt/rt-tests-2.4/cyclictest -l1000000 -m -Sp90 -i200 -h400 -q >data-histogram-output 

     Running 1,000,000 cycles. About 3 mins. Please wait ...

(Step 3) Plot the histogram 
$ gnuplot -p plotcmd-histogram.gp 

(Step 4) Export histogram as PDF.

Wassalam.
WRY

