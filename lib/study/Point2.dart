class Point2 {
  num x, y, z;

  Point2(this.x, this.y) : z = 0;

  Point2.bottom(num x) : this(x, 0); // 重定向构造函数

  void printInfo() => print("($x, $y, $z)");
}
