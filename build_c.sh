#!/bin/bash
gcc -O3 -fsplit-stack -o mm_int mm_int.c
gcc -O3 -fsplit-stack -o mm_float mm_float.c
gcc -O3 -fsplit-stack -o mm_double mm_double.c
gcc -O3 -fsplit-stack -fopenmp -o mm_int_omp mm_int_omp.c
