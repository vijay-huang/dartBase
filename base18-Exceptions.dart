void main(List<String> args) {
  // Exception object
  //throw new FormatException('数据格式错误。');

  // Error object
  //throw OutOfMemoryError();

  //任意对象
  //throw '这是一个异常';

  //try...catch
  // try {
  //   //throw FormatException('这是一个格式错误提示');
  //   throw OutOfMemoryError();
  // } on OutOfMemoryError {
  //   print('内存不足');
  //   rethrow;
  // } catch (e) {
  //   print(e);
  // }

  //finally
  try {
    throw OutOfMemoryError();
  } on OutOfMemoryError {
    print('内存不足');
  } catch (e) {
    print(e);
  } finally {
    print('end');
  }
}
