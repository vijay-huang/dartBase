class Point {
  //final 1-不能被修改  2-必须被构造函数初始

  late num x;
  late num y;
  late var origin;

  //构造函数-简化
  //Point(this.x, this.y);

  //初始化列表：冒号后面的作用是在构造函数的时候，同时对成员变量进行各种初始化
  Point(this.x, this.y) : origin = {x: x, y: y};

  //命名构造函数
  Point.formJson(Map json) {
    x = json['x'];
    y = json['y'];
  }

  Point.formXml(Map xml) {
    x = xml['x'];
    y = xml['y'];
  }

  //重定向构造函数  this就是定向到默认的构造函数
  Point.formBase(Map base) : this(base['x'], base['y']);
}

void main(List<String> args) {
  //构造函数-简化 调用
  var p = Point(3, 4);
  print([p.x, p.y]);

  //构造函数初始化列表 调用
  var p2 = Point(5, 6);
  print([p2.x, p2.y, p2.origin]);

  //命名构造函数 调用
  var p3 = Point.formJson({"x": 33, "y": 44});
  print([p3.x, p3.y]);

  //重定向构造函数 调用
  var p4 = Point.formBase({"x": 123, "y": 234});
  print([p4.x, p4.y]);
}
