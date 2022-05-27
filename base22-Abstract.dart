// This class is declared abstract and thus
// can't be instantiated.
abstract class People {
  static const String name = 'vijay';
  void printName(); // Define an abstract method.
}

class Teather extends People {
  void printName() => print("I am a teacher.");
  // Provide an implementation, so the method is not abstract here...
}

class Student implements People {
  String name = 'I am a student.';
  String? printName() {
    return name;
  }
}

void main(List<String> args) {
  var t = Teather();
  t.printName();

  var s = Student();
  print(s.printName());
}
