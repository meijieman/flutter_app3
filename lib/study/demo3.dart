void main() {
  // 运算符
  /*
  ?. 对象为 null 则跳过执行对应的函数
  ??= 对象为 nul 则给其赋值
  ?? 对象不为 null 返回其值，否则返回设置的值
   */

  String s;
  int len = s?.length;
  print("len $len");

  print("${s ?? '默认值'}");

  s ??= "default";
  print("$s");

  /*
  Dart 中，运算符也是对象成员函数的一部分

  Dart 支持类似于 C++ 的运算符复写机制
   */

  final x = Vector(3, 3);
  final y = Vector(2, 2);
  final z = Vector(1, 1);

  print(x == (y + z));
}

class Vector{
  num x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y+v.y);

  bool operator == (dynamic v) => x == v.x && y == v.y;

}


