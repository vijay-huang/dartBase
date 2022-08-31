void main(List<String> args) {
  //定义
  print('\n-----定义-------');
  var m1 = {'name': 'vijay', 'address': 'guangzhou', 'phone': '12348883888'};

  print(m1);

  //松散
  print('\n-----松散-------');
  var m2 = {};
  m2['name'] = 'vijay';
  m2['age'] = 18;
  m2['sex'] = 'male';

  m2['age'] = 35; //key是唯一的

  print(m2);

  //强类型
  print('\n-----强类型-------');
  var m3 = <String, String>{};
  m3['name'] = 'vijay';
  m3['address'] = 'guangzhou';
  //m3['age'] = 18;

  print(m3);

  //属性
  print('\n-----属性-------');
  var m4 = {'name': 'vijay', 'address': 'guangzhou', 'phone': '12348883888'};
  print(m4.length); //key-value对个数
  print(m4.isEmpty); //是否为空
  print(m4.isNotEmpty); //是否不为空
  print(m4.keys); //打印map的所有key
  print(m4.values); //打印map的所有value
  print(m4.entries); //打印map的所有条目

  //方法
  print('\n-----方法-------');
  var m5 = {'name': 'vijay', 'phone': 12348883888};
  m5.addAll({'age': 35, 'code': 'flutter'}); //新增kv数据
  m5.addEntries(m3.entries); //接入到另外一个map集合
  print(m5.containsKey('sex')); //检查key是否存在
  print(m5.containsValue('vijay')); //检查value是否存在
  print(m5);

  m5.remove('phone'); //删除数据
  print(m5);

  m5.removeWhere((key, value) => key == 'name'); //按条件删除
  print(m5);

  m5.update('code', (value) => 'python'); //更新数据
  print(m5);

  m5.updateAll((key, value) => '---$value---'); //更新批量
  print(m5);

  m5.clear(); //清空数据
  print(m5);

  //操作符
  print('\n-----操作符-------');
  var m6 = {'name': 'vijay', 'address': 'guangzhou', 'phone': '12348883888'};
  print(m6['name']);
  m6['name'] = 'vijay huang';
  print(m6);
}
