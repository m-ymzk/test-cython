/*
c_multiply.c

simple C function that alters data passed in via a pointer

    used to see how we can do this with Cython/numpy

*/

double c_multiply (double* array, double multiplier, int m, int n) {

    int i, j ;
    int index = 0 ;

    for (i = 0; i < m; i++) {
        for (j = 0; j < n; j++) {
            array[index] = array[index]  * multiplier ;
            index ++ ;
            }
        }
    return (double)1.0;
}
