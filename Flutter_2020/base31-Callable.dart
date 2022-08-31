//To allow an instance of your Dart class to be called like a function,
//implement the call() method.

void main(List<String> args) {
  var p = IOSPhone();
  var out = p(12345132);
  print(out);
}

//Callable classes
class IOSPhone {
  String call(int num) => "You phone number is ${num}";
}
