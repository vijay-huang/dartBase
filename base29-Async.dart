import 'package:dio/dio.dart';

// //调用异步 回调
// //使用关键字then方式异步回调
// void main() {
//   var dio = Dio();
//   dio.get("https://www.baidu.com").then((value) => {print(value.data)});
// }

void main(List<String> args) async {
  //简单的异步使用，关键字async和await
  var dio = Dio();
  Response<String> response = await dio.get("https://www.baidu.com");
  print(response);

  //async 写在函数定义
  //await 写在异步请求头
}
