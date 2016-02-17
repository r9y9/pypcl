# coding: utf-8

from libc.stdint cimport uint32_t
from libcpp cimport bool

cdef extern from "pcl/point_cloud.h" namespace "pcl":
    cdef cppclass PointCloud[T]:
        PointCloud()
        PointCloud(uint32_t, uint32_t)
        bool empty()
        bool isOrganized()
        void clear()
        size_t size()
