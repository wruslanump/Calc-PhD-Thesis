#!/bin/bash

## https://www.osadl.org/uploads/media/mklatencyplot.bash

## MUST RUN AS ROOT

echo 
echo "# Bismillah 3 times WRY"
echo "# 1. Run cyclictest version 2.4 x86_64 "
echo "     sudo /home/wruslan/opt/rt-tests-2.4/cyclictest -l10000000 -m -Sp90 -i200 -h400 -q >histo-output "
echo 
echo "     Running 10,000,000 cycles (30 minutes). Please wait ..."

# 1. Run cyclictest (CHANGE THE L)
/home/wruslan/opt/rt-tests-2.4/cyclictest -l10000000 -m -Sp90 -i200 -h400 -q >histo-output 

# 2. Get maximum latency
## max=`grep "Max Latencies" output | tr " " "\n" | sort -n | tail -1 | sed s/^0*//`

max=`grep "Max Latencies" histo-output | tr " " "\n" | sort -n | tail -1 | sed s/^0*//`

# 3. Grep data lines, remove empty lines and create a common field separator
## grep -v -e "^#" -e "^$" output | tr " " "\t" >histogram 

grep -v -e "^#" -e "^$" histo-output | tr " " "\t" >histogram 

# 4. Set the number of cores, for example
cores=8
now=$(date)
host=$(hostname)
kernel=$(uname -r)
OS=$(uname -o)
OSversion=$(uname -v)
CPUcores=$(grep --count ^processor /proc/cpuinfo)
## SUBSTRING 
OSver=${OSversion:0:80}
echo ""

# 5. Create two-column data sets with latency classes and frequency values for each core, for example
for i in `seq 1 $cores`
do
  column=`expr $i + 1`
  cut -f1,$column histogram >histogram$i
done

# 6. Create plot command header
echo -n -e "set title \"Histogram Latency plot: RT-tests-v2.4 \\\n Host: $host\\\n Number of CPU cores: $CPUcores\\\n Kernel: $kernel\\\n Operating System: $OS\\\n OSVersion: $OSver\\\n Date: $now \" \n\

set terminal qt\n\
clear\n\
set autoscale\n\
set grid\n\

set xlabel \"Latency (us), max $max (us)\"\n\
set logscale y\n\
set xrange [0:400]\n\
set yrange [0.8:*]\n\
set ylabel \"Number of latency samples\"\n\
plot " >plotcmd-histogram.gp

# 7. Append plot command data references
for i in `seq 1 $cores`
do
  if test $i != 1
  then
    echo -n ", " >>plotcmd-histogram.gp
  fi
  cpuno=`expr $i - 1`
  if test $cpuno -lt 10
  then
    title=" CPU$cpuno"
   else
    title="CPU$cpuno"
  fi
  echo -n "\"histogram$i\" using 1:2 title \"$title\" with histeps" >>plotcmd-histogram.gp
done

# 8. Execute plot command in Terminal
## gnuplot -persist  plotcmd-histogram.gp
echo 
echo "# Alhamdulillah 3 times WRY"
echo

