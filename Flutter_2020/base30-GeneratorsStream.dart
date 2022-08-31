import 'dart:async';

// 异步生成器

void main(List<String> args) {
  //流监听
  // asyncNaturalsTo(5).listen((event) {
  //   print(event);
  // });

  //StreamSubscription 对象进行流监听控制
  StreamSubscription subscription = asyncNaturalsTo(5).listen(null);
  subscription.onData((data) {
    print(data);
    //subscription.pause();
  });
}

// mark the function body as async*,
// and use yield statements to deliver values:
Stream<int> asyncNaturalsTo(int n) async* {
  print('start');
  int k = 0;
  while (k < n) {
    yield k++;
  }
  print('end');
}
