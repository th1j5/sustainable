#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <cblas.h>
#define N 8192


int main()
{
    double *first = (double *)malloc( N*N*sizeof( double ) );
    double *second = (double *)malloc( N*N*sizeof( double ) );
    double *result = (double *)malloc( N*N*sizeof( double ) );
    int i;
    srand(time(NULL));
    for (i = 0; i < (N*N); i++) {
        first[i] = (double)(rand() % 10);
    }

    for (i = 0; i < (N*N); i++) {
        second[i] = (double)(rand() % 10);
    }

    for (i = 0; i < (N*N); i++) {
        result[i] = 0.0;
    }

    cblas_dgemm(CblasRowMajor, CblasNoTrans, CblasNoTrans, N,N,N, 1.0, first, N, second, N, 0.0, result, N);
    
    /*for (i = 0; i < (N*N); i++) {
        printf("%f ", first[i]);
    }
    printf("\n\n");
    for (i = 0; i < (N*N); i++) {
        printf("%f ", second[i]);
    }
    printf("\n\n");
    for (i = 0; i < (N*N); i++) {
        printf("%f ", result[i]);
    }
    printf("\n");*/
    free(first);
    free(second);
    free(result);
    return 0;
}

