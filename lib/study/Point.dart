
class Point{
  num x, y;
  static num factor = 0;

  Point(this.x, this.y); // 等同于函数体内 this.x = x; this.y = y;

  void printInfo()=>print('($x, 4y)');

  static void printZValue()=>print('$factor');
}
