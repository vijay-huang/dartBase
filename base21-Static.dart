class People {
  static String name = 'vijay';
  void show() {
    print(name);
    //print(this.name);
    //不能用this，因为静态变量实际存在于类，而不是实例
  }

  //静态方法可以通过外部直接访问
  static void sayHello() {
    print('Hello,${name}');
  }
}

void main(List<String> args) {
  //静态变量可以通过外部直接访问，不需要将类实例化
  print(People.name);

  //实例化后的类也可以访问静态变量
  var p = People();
  p.show();

  //直接调用静态方法
  People.sayHello();

  //总结:
  //1、实例化后将无法通过外部直接调用static成员
  //2、静态成员与实例成员是分开的，静态成员在类定义体中，而实例成员在类的实例中
}
