# coding: utf-8
# cython: boundscheck=True, wraparound=True

import numpy as np
cimport numpy as np
cimport cython

from _visualization cimport pcl_visualizer

cdef class PCLVisualizer:
    cdef pcl_visualizer._PCLVisualizer* ptr

    def __cinit__(self, name, create_interactor=True):
        self.ptr = new pcl_visualizer._PCLVisualizer(name, create_interactor)

    def __dealloc__(self):
        if self.ptr is not NULL:
            del self.ptr

    def spin(self):
        self.ptr.spin()
