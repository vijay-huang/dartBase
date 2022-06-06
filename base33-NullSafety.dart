printStringLength(String? str) {
  print("${str} -- ${str?.length}");
}

//dart可空类型， 在类型后面加? 可以是int?  double?  String?
//如String? == String|null
// ?. 成员访问符， 如str?.length

//断言 !

//late 明确在后面赋值

void main(List<String> args) {
  printStringLength("vijay");

  //没有空安全前运行时才会报错，有空安全IDE直接报错；
  printStringLength(null);

  var lise = <String?>["vijay", "allen", null];
  lise.forEach((element) {
    printStringLength(element);
  });
}
