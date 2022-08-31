import 'dart:isolate';

void main() {
  multiThread();
}

void multiThread() {
  print('multiThread start');

  String? _tName = Isolate.current.debugName;
  print('当前线程：${_tName}');
  Isolate.spawn(newThread, 'Hello');

  print('multiThread end');
}

void newThread(String msg) {
  String? _tName = Isolate.current.debugName;
  print('当前线程：${_tName}');
  print(msg);
}
