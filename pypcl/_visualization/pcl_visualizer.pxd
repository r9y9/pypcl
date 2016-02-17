# coding: utf-8

from libcpp.string cimport string

cdef extern from "pcl/visualization/pcl_visualizer.h" namespace "pcl":
    cdef cppclass _PCLVisualizer "pcl::visualization::PCLVisualizer":
        _PCLVisualizer(string&, bool)

        void spin()
        void spinOnce(int, bool)
        void setFullScreen(bool)
