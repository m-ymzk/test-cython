#!/usr/bin/env python

import numpy as np
import time

import multiply
import mean

a = np.arange(100000000, dtype=np.float64).reshape((10000000,10))

#print(a)

st1=time.time()
#print("#1,",multiply.multiply(a, 3))
st2=time.time()
print("#2,",mean.mean(a))
st3=time.time()
print("#3,",mean.variance(a))
st4=time.time()
print("#time(cython):",st2-st1, st3-st2, st4-st3)

#a = np.arange(1000000000, dtype=np.float64).reshape((1000000000,1))
#a = np.arange(100000000, dtype=np.float64).reshape((10000,10000))
st1=time.time()
#a=a*3
print("#1,",1)
st2=time.time()
print("#2,",np.mean(a))
st3=time.time()
print("#3,",np.var(a))
st4=time.time()
print("#time(numpy):",st2-st1, st3-st2, st4-st3)
#print(a)
