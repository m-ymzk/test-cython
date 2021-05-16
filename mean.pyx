"""
mean.pyx

"""

import cython

# import both numpy and the Cython declarations for numpy
import numpy as np
cimport numpy as np

# declare the interface to the C code
cdef extern double c_mean (double* array, int m, int n)
cdef extern double c_var (double* array, int m, int n)

@cython.boundscheck(False)
@cython.wraparound(False)
def mean(np.ndarray[double, ndim=2, mode="c"] input not None):
    """
    mean (arr)

    Takes a numpy array as input, and calculates the mean value

    param: array -- a 2-d numpy array of np.float64

    """
    cdef int m, n
    cdef double ret

    m, n = input.shape[0], input.shape[1]

    ret=c_mean (&input[0,0], m, n)

    return ret

@cython.boundscheck(False)
@cython.wraparound(False)
def variance(np.ndarray[double, ndim=2, mode="c"] input not None):
    """
    variance (arr)

    Takes a numpy array as input, and calculates the variance value

    param: array -- a 2-d numpy array of np.float64

    """
    cdef int m, n
    cdef double ret

    m, n = input.shape[0], input.shape[1]

    ret=c_var (&input[0,0], m, n)

    return ret
