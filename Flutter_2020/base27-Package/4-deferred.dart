// 延迟加载dart库
// 1-可提高程序启动速度；2-用在不常使用的功能；3-用在载入时间过长的包

import './phone.dart' deferred as pp;

void main(List<String> args) async {
  var run = true;
  if (run) {
    // loadLibrary()方法在需要的时候载入包
    await pp.loadLibrary();
    var xm = pp.Phone('android');
    xm.startup();
  }
}
