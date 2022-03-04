#!/bin/bash

# Argument is 'powersave' or 'performance' or 'ondemand'
# Run `cpupower frequency-info` to see the list
MIN_FREQ=`/sys/devices/system/cpu/cpufreq/policy0/scaling_min_freq`
MAX_FREQ=`/sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq`
if [ $1 -eq "powersave" ]; then
  echo "Minimum frequency is $MIN_FREQ Hz"
  #sudo cpupower frequency-set -u $MIN_FREQ
elif [ $1 -eq "performance" ]; then
  echo "Maximum frequency is $MAX_FREQ Hz"
  #sudo cpupower frequency-set -d $Max_FREQ
else
  echo "Wrong argument. Use powersave or performance"
fi

