main() {
  var number = 2020;
  printInteger(number);

  m1();
  m2();
  m3();
}

printInteger(int a) {
  print('hello, this is $a.');
}

// var
// 基本类型 num、bool、String、List 和 Map

void m1() {
  num n = 2;
  // num 有两个子类 int double
  int i = -21;
  int abs = i.abs();
  print("abs $abs");

  double d = 28.0;
  int round = d.round();
  print("round $round");

  bool b = true;
  if (b) {
  } else {}

  assert(b == true);

  // Dart 的 String 由 UTF-16 的字符串组成
  String s = "aha";
  String s1 = 'eee ${s.toUpperCase()}'; // 可以单引号，比较像 JavaScript

  // 集合类型
  List<String> lists = new List();
  lists.add(s);
  lists.add(s1);
  print("lists $lists");

  var arr1 = ["Tom", "Andy", "Jack"];
  var arr2 = List.of([1, 2, 3]);
  arr2.add(499);
  arr2.forEach((v) => print('${v}'));

  Map<String, String> m = new Map();
  m['name'] = "major)";
  print("m values $m");

//  m.putIfAbsent("key", "222");

  var map1 = {"name": "Tom", 'sex': 'male'};
  var map2 = new Map();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((k, v) => print('$k: $v'));
}

void m2() {
  var arr1 = <String>['Tom', 'Andy', 'Jake'];
  var arr2 = new List<int>.of([1, 2, 3]);
  arr2.add(499);
  arr2.forEach((v) => print('$v'));
  print(arr2 is List<int>); // true

  var map1 = <String, String>{'name': 'Tom', 'sex': 'male'};
  var map2 = new Map<String, String>();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((k, v) => print('$k; $v'));
  print(map2 is Map<String, String>); // true
}

void m3() {
  // 常量
  // const，表示变量在编译期间即能确定的值；
  // final 则不太一样，用它定义的变量可以在运行时确定值，而一旦确定后就不可再变
  const int i = 22;
  final name = 'Andy';

  var x = 70;
  var y = 30;
  final z = x / y;

  var v;
  print('v is $v'); // 未初始化的变量值为 null


  // 在 Dart 中，所有类型都是对象类型，都继承自顶层类型 Object，因此一切变量都是对象，数字、布尔值、函数和 null 也概莫能外
}
