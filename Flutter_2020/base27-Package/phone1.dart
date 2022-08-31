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
  void startup() => print('Android Phone1 StartUp!');
}

class IosPhone implements Phone {
  void startup() => print('Ios Phone1 StartUp!');
}
