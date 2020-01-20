import "Point.dart";
import "Point2.dart";
import "Point3.dart";

void main() {
  /*
   编程语言设计思想
   1. 如何表示信息
   2. 如何处理信息


   dart 将处理信息的的过程抽象成对象
   */

  m3();
}

// 函数也是对象，类型为 Function，即 函数也可以定义为变量

bool isZero(int number) {
  return number == 0;
}

bool isZero1(int number) => number == 0;

void printInfo(int number, Function check) {
  print("$number is Zero: ${check(number)}");
}

void m() {
  Function f = isZero;
  int x = 10;
  int y = 0;
  printInfo(x, f);
  printInfo(y, f);

  printInfo(2, isZero);
}

// 可选命名参数
void enableFlags({bool bold, bool hidden}) => print("$bold, $hidden");

void enableFlags2({bool bold = true, bool hidden = false}) =>
    print("$bold, $hidden");

void enableFlags3(bool bold, [bool hidden]) => print("$bold, $hidden");

void enableFlags4(bool bold, [bool hidden = false]) => print("$bold, $hidden");

void m1() {
  enableFlags(bold: true, hidden: false);

  enableFlags(bold: true);

  enableFlags2(bold: false);

  enableFlags3(true, false);
  enableFlags3(true);
  enableFlags4(true);
  enableFlags4(true, true);
}

void m2() {
  // 类 特定类型的数据和方法的集合

  var p = new Point(100, 200);
  p.printInfo();

  Point.factor = 10;
  Point.printZValue();

  var p2 = new Point2.bottom(100);
  p2.printInfo();
}

void m3() {
  var xxx = Vector();
  xxx
    ..x = 1
    ..y = 2
    ..z = 3; // 级联运算符
  xxx.printInfo();

  var yyy = Coordinate();
  yyy
    ..x = 1
    ..y = 2;

  yyy.printInfo();
  print(yyy is Point3);
  print(yyy is Coordinate);
}

/*
实现复用
1. 继承
2. 接口
3. 混入 Mixin
  也就是具有实现方法的接口

  Dart 没有多重继承

 */

void m4() {
  var yyy = Coordinate2();
  print(yyy is Point3);
  print(yyy is Coordinate2);

}
