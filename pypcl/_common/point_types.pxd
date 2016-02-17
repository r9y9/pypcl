# coding: utf-8

cdef extern from "pcl/point_types.h" namespace "pcl":
    cdef cppclass PointXYZ:
        float x
        float y
        float z
