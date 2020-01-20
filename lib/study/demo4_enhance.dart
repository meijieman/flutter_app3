void main() {
  ShoppingCart sc = ShoppingCart('张三', '123456');
  sc.bookings = [Item('苹果', 10.0), Item('鸭梨', 20.0)];
  print(sc.getInfo());
}

class Meta {
  double price;
  String name;

  Meta(this.price, this.name);
}

class Item extends Meta {
  Item(name, price) : super(name, price);

  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

class ShoppingCart extends Meta {
  DateTime date;
  String code;
  List<Item> bookings;

  double get price =>
      bookings.reduce((value, element) => value + element).price;

  ShoppingCart(name, this.code)
      : date = DateTime.now(),
        super(name, 0);

  getInfo() => '''
    购物车信息：
    \n--------------------------
    \n用户名：$name
    \n优惠码：$code
    \n总价：$price
    \n日期：${date.toString()}
    ''';
}
