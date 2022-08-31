import 'package:dio/dio.dart';

void main(List<String> args) async {
  var content = await getUrl("https://www.baidu.com");
  print(content);
}

//异步返回值
//定义 Future<T> 返回对象
Future<String> getUrl(String url) async {
  var dio = Dio();
  Response<String> response = await dio.get(url);
  return response.data!;
}
