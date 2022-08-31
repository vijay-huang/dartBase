// 2、导入第三方库，
// a-编写pubspec.yaml文件，加入下面的dependencies库+版本号
//    name: ducafecat
//    dependencies:
//      dio: ^4.0.6

// b-程序调用

import 'package:dio/dio.dart';

void main(List<String> args) async {
  Dio dio = Dio();
  Response<String> rs = await dio.get('https://www.baidu.com/');
  print(rs.data);

  httpGet();
}

void httpGet() async {
  try {
    var dio = await Dio().get('https://www.sogou.com/');
    print(dio);
  } catch (e) {
    print(e);
  }
}
