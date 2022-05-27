//同步生成器

void main(List<String> args) {
  // var it = naturalsTo(5).iterator;
  // //1 moveNext方法，将迭代器前进到下一个迭代元素
  // while (it.moveNext()) {
  //   print(it.current); //3
  // }

  var ndf = naturalsDownFrom(5).iterator;
  while (ndf.moveNext()) {
    print(ndf.current);
  }
}

//mark the function body as sync*,
//and use yield statements to deliver values:
Iterable<int> naturalsTo(int n) sync* {
  print('start');
  int k = 0;
  while (k < n) {
    //yield 会等待 moveNext 指令
    yield k++; //2
  }
  print('end');
}

//递归生成器
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
