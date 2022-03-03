#!/bin/bash

# Argument is 'powersave' or 'performance'
sudo cpupower frequency-set --governor $1
