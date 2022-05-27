//抽象类
abstract class Iphone {
  void startup();
  void shutdown();
}

//一般类
class Phone {
  void startup() => print('开机');
  void shutdown() => print('关机');
}

//抽象类继承：抽象类只定义抽象函数，实例化访问会报错
class IosPhone extends Iphone {
  @override
  void startup() => print('IOS开机');

  @override
  void shutdown() => print('IOS关机');
}

//实现继承，关键字extends
class AndroidPhone extends Phone {
  //父(超)类调用，用super
  void startup() {
    super.startup();
    print('Android开机');
  }

  //用修饰符override重写父(超)类的方法
  @override
  void shutdown() => print("Android关机");
}

//调用父(超)类构造
class Mobile {
  int? signal;
  int? number;

  Mobile(this.signal, this.number);

  void showNumber() {
    print("Number: $number");
  }
}

class OppoPhone extends Mobile {
  //用冒号:super 调用父类的构造函数
  OppoPhone(int signal, int number) : super(signal, number);
}

void main(List<String> args) {
  var ap = AndroidPhone();
  ap.startup();
  ap.shutdown();

  var ios = IosPhone();
  ios.startup();
  ios.shutdown();

  var oppo = OppoPhone(23, 13488888888);
  oppo.showNumber();
}
