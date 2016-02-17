# coding: utf-8
# cython: boundscheck=True, wraparound=True

import numpy as np

cimport numpy as np
cimport cython

from _common cimport point_types
from _common cimport point_cloud


cdef class PointXYZ:
    cdef point_types.PointXYZ val

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

cdef class PointCloud:
    cdef point_cloud.PointCloud[point_types.PointXYZ] val

    def __cinit__(self, w=None, h=None):
        if w is not None or h is not None:
            self.val = point_cloud.PointCloud[point_types.PointXYZ](w,h)

    def  empty(self):
        self.val.empty()

    def isOrganized(self):
        self.val.isOrganized()

    def clear(self):
        self.val.clear()

    def size(self):
        return self.val.size()
