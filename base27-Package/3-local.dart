// 导入文件

import './phone.dart';

//导入包里有同名类的，调用时会报错，这时采用as
import './phone1.dart' as pp;

//也可以对包的内容进行筛选，用show（只使用某几个包）或者hide（筛掉某几个包）

void main(List<String> args) {
  var p1 = Phone('android');
  p1.startup();

  var p2 = Phone('ios');
  p2.startup();

  //用as的pp去调用同名类Phone
  var xm = pp.Phone('android');
  xm.startup();
}
