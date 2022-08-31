// 泛型使用
// 很多容器对象，在创建对象时都可以定义泛型类型

void main(List<String> args) {
  // var l = List<String>();  //已经不支持
  var l = <String>[];
  l.add('aaa');
  l.add('bbb');
  l.add('ccc');
  print(l);

  var l2 = <int>[];
  l2.add(12);
  //l2.add('aa');
  print(l2);

  var m = Map<int, String>();
  m[1] = 'aaaa';
  m[2] = 'bbbb';
  m[3] = 'cccc';
  print(m);

  var m2 = <String, String>{};
  m2['name'] = 'vijay';
  m2['sex'] = 'male';
  m2['addr'] = 'GuangZhou';
  print(m2);

  //泛型函数，调用：
  var key = addCache('a00001', 'val....');
  print(key);

  //构造函数泛型，调用：
  var mp = MobilePhone<String>('aaa124455566');
  print(mp.mobileNumber);

  //泛型限制，调用：
  var ad = AndroidPhone();
  var p = Phone<AndroidPhone>(ad);
  p.mobile.startup();
}

//泛型函数
//泛型可以用在一个函数的定义
K addCache<K, V>(K key, V val) {
  print('${key} - ${val}');
  return key;
}

//构造函数泛型
//这是大多数情况下使用泛型的场景，在一个类的构造函数中
class MobilePhone<T> {
  final T mobileNumber;
  MobilePhone(this.mobileNumber);
}

//泛型限制
//通过extends关键字可以限定泛型使用的类型
class Phone<T extends AndroidPhone> {
  final T mobile;
  Phone(this.mobile);
}

class AndroidPhone {
  void startup() => print('Android 开机');
}
