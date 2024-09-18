set title "Histogram Latency plot: RT-tests-v2.4 \n Host: HP-Laptop-02-debian10\n Number of CPU cores: 8\n Kernel: 4.19.0-25-rt-amd64\n Operating System: GNU/Linux\n OSVersion: #1 SMP PREEMPT RT Debian 4.19.289-2 (2023-08-08)\n Date: Fri 13 Oct 2023 09:08:55 AM EDT " 

set terminal qt
clear
set autoscale
set grid

set xlabel "Latency (us), max 46 (us)"
set logscale y
set xrange [0:400]
set yrange [0.8:*]
set ylabel "Number of latency samples"
plot "histogram1" using 1:2 title " CPU0" with histeps, "histogram2" using 1:2 title " CPU1" with histeps, "histogram3" using 1:2 title " CPU2" with histeps, "histogram4" using 1:2 title " CPU3" with histeps, "histogram5" using 1:2 title " CPU4" with histeps, "histogram6" using 1:2 title " CPU5" with histeps, "histogram7" using 1:2 title " CPU6" with histeps, "histogram8" using 1:2 title " CPU7" with histeps