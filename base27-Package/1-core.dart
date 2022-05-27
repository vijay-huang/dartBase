//1、导入核心库

import 'dart:io';

void main(List<String> args) {
  //注意默认是从根路径开始
  var f = File('README.md');
  var content = f.readAsStringSync();
  print(content);
}
