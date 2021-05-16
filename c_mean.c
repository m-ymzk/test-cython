/*
c_mean.c
*/

double c_mean (double* array, int m, int n) {

    int i;
    double mean = 0;

    for (i = 0; i < m * n; i++) {
            mean += array[i];
    }
    return mean / (double)(m * n);
}

double c_var (double* array, int m, int n) {

    int i;
    double mean = 0;
    double var = 0;

    for (i = 0; i < m * n; i++) {
            mean += array[i];
            var += array[i]*array[i];
    }
    mean /= (double)(m * n);
    return var / (double)(m * n) - mean * mean;
}
