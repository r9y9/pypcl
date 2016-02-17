import pypcl


def test_point_types():
    p = pypcl.PointXYZ(1, 2, 3)
    assert p.x == 1
    assert p.y == 2
    assert p.z == 3
