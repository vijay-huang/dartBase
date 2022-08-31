class Phone {
  void startup() => print('StartUp!');
  void shutdown() => print('ShutDown!');
}

class AndroidPhone extends Phone {}

class AndroidSystem {
  void call() => print('Android call ...');
}

class Wechat {
  void sms() => print('wechat sms ...');
}

class Qq {
  void sms() => print('qq sms ...');
}

//采用关键字 with ..., ..., ...方式mixin多个类功能
class OppoPhone extends AndroidPhone with AndroidSystem, Wechat, Qq {
  // 注意：如类中有重名函数，会冲突，只执行最后一个。如上面Wechat和Qq的sms方法
  // 遇到相同功能的函数，最后载入的会覆盖之前的函数定义
}

void main(List<String> args) {
  var oppo = OppoPhone();
  oppo.startup();
  oppo.call();
  oppo.sms();
}
