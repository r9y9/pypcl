import pypcl


def test_point_types():
    p = pypcl.PointXYZ(1, 2, 3)
    assert p.x == 1
    assert p.y == 2
    assert p.z == 3


def test_point_cloud():
    cloud = pypcl.PointCloud()
    assert cloud.size() == 0
    cloud = pypcl.PointCloud(5, 5)
    assert cloud.size() == 25
    cloud.clear()
    assert cloud.size() == 0
