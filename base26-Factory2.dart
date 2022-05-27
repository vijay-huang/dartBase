void main(List<String> args) {
  var p1 = Phone('android');
  p1.startup();

  var p2 = Phone('ios');
  p2.startup();
}

//工厂构造函数， 核心：抽象类（工厂函数），impelements
abstract class Phone {
  factory Phone(String name) {
    switch (name) {
      case 'android':
        return AndroidPhone();
      default:
        return IosPhone();
    }
  }
  void startup();
}

class AndroidPhone implements Phone {
  void startup() => print('Android Phone StartUp!');
}

class IosPhone implements Phone {
  void startup() => print('Ios Phone StartUp!');
}
