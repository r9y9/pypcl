# coding: utf-8
# cython: boundscheck=True, wraparound=True

import numpy as np

cimport numpy as np
np.import_array()

cimport cython

from _common cimport point_types


cdef class PointXYZ:
    cdef point_types._PointXYZ val

    def __cinit__(self, x, y, z):
        self.val.x = x
        self.val.y = y
        self.val.z = z

    @property
    def x(self):
        return self.val.x

    @property
    def y(self):
        return self.val.y

    @property
    def z(self):
        return self.val.z
