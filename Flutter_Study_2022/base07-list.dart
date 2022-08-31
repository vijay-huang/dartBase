void main(List<String> args) {
  //定义
  print('\n-----定义-------');
  var ls = [1, 2, 3];
  print(ls);

  //自动，用..add()进行追加
  print('\n-----自动-------');
  var ws = [];
  ws
    ..add(1)
    ..add(3)
    ..add(5);

  print(ws);

  //定长，最好List指定数据类型，如List<int>
  print('\n-----定长-------');
  var ws2 = List<int>.filled(3, 0);
  ws2[0] = 2;
  ws2[1] = 4;
  ws2[2] = 6;
  // ws2[3] = 8; //Invalid value: Not in inclusive range 0..2: 3

  print(ws2);

  //生产数据
  print('\n-----生产数据-------');
  var ws3 = List.generate(3, (index) => index + 2);
  print(ws3);

  //属性
  print('\n-----属性-------');
  var l = [2, 3, 4, 5];
  print(l.first);
  print(l.last);
  print(l.length);
  print(l.isEmpty);
  print(l.isNotEmpty);
  print(l.reversed);

  print(l);

  //方法（操作）
  //1-增加
  print('\n-----方法-增加------');
  var ls_m1 = [];
  ls_m1
    ..add(2)
    ..addAll([3, 4, 5])
    ..insert(0, 99)
    ..insertAll(0, [88, 77, 66]);

  print(ls_m1);

  //2-查询
  print('\n-----方法-查询------');
  var ls_m2 = [2, 4, 6, 8, 10, 12];
  print(ls_m2.indexOf(8)); //8所在的index
  print(ls_m2.indexWhere((element) => element > 10)); //大于10的第一个数的index

  //3-删除
  print('\n-----方法-删除------');
  var ls_m3 = [2, 4, 6, 8, 10, 12];
  ls_m3.remove(6);
  print(ls_m3);

  ls_m3.removeAt(2);
  print(ls_m3);

  //4-区间
  print('\n-----方法-区间------');
  var ls_m4 = [1, 2, 3, 4, 5, 6];
  ls_m4.fillRange(2, 4, 33);
  print(ls_m4);
  print(ls_m4.getRange(1, 5));

  //5-洗牌
  print('\n-----方法-洗牌------');
  var ls_m5 = [2, 5, 3, 7, 9, 2, 5, 6];
  ls_m5.shuffle();
  print(ls_m5);
  ls_m5.shuffle();
  print(ls_m5);

  //6-排序
  //6.1数字排序
  print('\n-----排序-数字排序------');
  var ls_m6 = [2, 5, 3, 7, 9, 2, 5, 6];
  ls_m6.sort();
  print(ls_m6);
  ls_m6.sort(((a, b) => b.compareTo(a)));
  print(ls_m6);

  //6.2日期排序
  print('\n-----排序-日期排序------');
  var ls_m6_date = [];
  ls_m6_date
    ..add(DateTime.now())
    ..add(DateTime.now().add(Duration(days: 1)))
    ..add(DateTime.now().add(Duration(days: -2)));
  ls_m6_date.sort();
  print(ls_m6_date);
  ls_m6_date.sort((a, b) => b.compareTo(a));
  print(ls_m6_date);

  //7-操作符
  print('\n-----操作符------');
  var ls_m7 = [1, 2, 3, 4];
  ls_m7[0] = 88;
  print(ls_m7);

  ls_m7 = ls_m7 + [77, 88];
  print(ls_m7);
}
