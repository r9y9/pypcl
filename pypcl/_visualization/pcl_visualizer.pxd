# coding: utf-8

from libcpp.string cimport string

cdef extern from "pcl/visualization/pcl_visualizer.h" namespace "pcl::visualization":
    cdef cppclass PCLVisualizer:
        PCLVisualizer(string&, bool)

        void spin()
        void spinOnce(int, bool)
        void setFullScreen(bool)
