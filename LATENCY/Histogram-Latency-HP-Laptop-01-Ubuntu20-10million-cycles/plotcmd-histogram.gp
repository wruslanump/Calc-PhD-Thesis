set title "Histogram Latency plot: RT-tests-v2.4 \n Host: HP-Laptop-01-ub20\n Number of CPU cores: 8\n Kernel: 5.15.0-86-lowlatency\n Operating System: GNU/Linux\n OSVersion: #95~20.04.1-Ubuntu SMP PREEMPT Thu Sep 21 13:46:51 UTC 2023\n Date: Fri 13 Oct 2023 07:36:39 PM +08 " 

set terminal qt
clear
set autoscale
set grid

set xlabel "Latency (us), max 431 (us)"
set logscale y
set xrange [0:400]
set yrange [0.8:*]
set ylabel "Number of latency samples"
plot "histogram1" using 1:2 title " CPU0" with histeps, "histogram2" using 1:2 title " CPU1" with histeps, "histogram3" using 1:2 title " CPU2" with histeps, "histogram4" using 1:2 title " CPU3" with histeps, "histogram5" using 1:2 title " CPU4" with histeps, "histogram6" using 1:2 title " CPU5" with histeps, "histogram7" using 1:2 title " CPU6" with histeps, "histogram8" using 1:2 title " CPU7" with histeps