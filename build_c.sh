#!/bin/bash
gcc -O3 -fsplit-stack -o mm_int mm_int.c
gcc -O3 -fsplit-stack -o mm_float mm_float.c
gcc -O3 -fsplit-stack -o mm_double mm_double.c
gcc -O3 -fsplit-stack -fopenmp -o mm_double_omp mm_double_omp.c

# Do not forget to install the libopenblas-dev package
gcc -O3 -fsplit-stack -fopenmp -c mm_double_blas.c -o mm_double_blas.o
g++ -std=c++11 -o  mm_double_blas mm_double_blas.o -lblas -fopenmp
