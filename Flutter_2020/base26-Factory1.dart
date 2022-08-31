void main(List<String> args) {
  var ad = phoneFactory('android');
  ad.startup();

  var ios = phoneFactory('ios');
  ios.startup();
}

//工厂函数，三核心：一般类、返回同名类的函数、extends继承
class Phone {
  void startup() => print('StartUp!');
  void shutdown() => print('ShutDown!');
}

Phone phoneFactory(String name) {
  switch (name) {
    case 'android':
      return AndroidPhone();
    default:
      return IosPhone();
  }
}

class AndroidPhone extends Phone {
  void startup() => print('Android Phone StartUp!');
}

class IosPhone extends Phone {
  void startup() => print('Ios Phone StartUp!');
}



//工厂构造函数， 核心：抽象类（工厂函数），impelements

