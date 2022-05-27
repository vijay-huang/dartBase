class People {
  late String _name;

  set pName(String value) {
    _name = value;
  }

  //可简化为
  //set pName(String value) => _name = value;

  String get pName {
    return 'my name is ${_name}';
  }

  //可简化为
  //String get pName => 'my name is ${_name}';
}

void main(List<String> args) {
  var p = People();
  p.pName = 'vijay';
  print(p.pName);
}
