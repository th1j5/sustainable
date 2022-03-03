#!/bin/bash
gcc -O3 -fsplit-stack -o mm_int mm_int.c
gcc -O3 -fsplit-stack -o mm_float mm_float.c
gcc -O3 -fsplit-stack -o mm_double mm_double.c
