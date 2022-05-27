void main(List<String> args) {
  var ap = AndroidPhone();
  ap.startup();
  ap.shutdown();
  print(ap.signal);

  print(greetVijay(Person('Emily')));
  print(greetVijay(Impostor()));
}

//接口用途 - 抽象类 请用字母 I 开头 , 如 IPhone
abstract class Iphone {
  //定义一个抽象类phone

  void startup() => print('开机');
  void shutdown() => print('关机');
}

class Mobile {
  int? signal;
}

class AndroidPhone implements Iphone, Mobile {
  int? signal = 9;
  void startup() => print('安卓开机');
  void shutdown() => print('安卓关机');
}

//接口用途 - 普通类
// A person. The implicit interface contains greet().
class Person {
  // In the interface, but visible only in this library.
  final String _name;

  // Not in the interface, since this is a constructor.
  Person(this._name);

  // In the interface.
  String greet(String who) => "Hello, $who. I am $_name.";
}

class Impostor implements Person {
  String get _name => '';

  String greet(String who) => "Hi $who. Do you know who I am?";
}

String greetVijay(Person person) => person.greet('Vijay');
