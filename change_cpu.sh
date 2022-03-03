#!/bin/bash

# Argument is 'powersave' or 'performance' or 'ondemand'
# Run `cpupower frequency-info` to see the list
sudo cpupower frequency-set --governor $1
