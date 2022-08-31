import 'dart:async';
import 'dart:isolate';

//step1: 定义主线程
void main() async {
  // step3: 编写回调Port
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(echo, receivePort.sendPort);

  //step6: 保存隔离线程回调Port
  var sendPort = await receivePort.first;

  //step7: 发送消息
  var msg = await sendReceiveMessage(sendPort, "foo");
  print("Receiced message: ${msg}");

  msg = await sendReceiveMessage(sendPort, "bar");
  print("Receiced message: ${msg}");
}

//setp2: 定义隔离线程的入口点
echo(SendPort sendPort) async {
  //step4: 编写回调Port
  var port = ReceivePort();

  //step5: 告诉主线程回调入口点
  sendPort.send(port.sendPort);

  //step:8 循环接收消息
  await for (var msg in port) {
    //数组msg[0]是数据
    var data = msg[0];
    //数组msg[1]是发送方Port
    SendPort replyTo = msg[1];

    //回传发送方 数据
    replyTo.send(data);

    //如果数据是bar 关闭当前回调
    if (data == "bar") port.close();
  }
}

/*
主线程 发送消息函数
数组 msg[0] 是数据
数组 msg[1] 是发送方Port
返回 隔离线程 Port
*/
Future sendReceiveMessage(SendPort port, msg) {
  ReceivePort response = ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}
