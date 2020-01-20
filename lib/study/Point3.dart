class Point3{
  num x = 0, y = 0;
  void printInfo()=>print('($x, $y)');


}

// 继承
class Vector extends Point3{
  num z = 0;

  @override
  void printInfo()=>print('($x, $y, $z)');
}

// 接口
class Coordinate implements Point3{
  num x = 0, y = 0;
  void printInfo()=>print("($x, $y)");
}

// 混入 with

class Coordinate2 with Point3{

}

