void main(List<String> args) {
  //do...while
  bool isRunning = true;
  do {
    print("Hello, I am running.");
    isRunning = false;
  } while (isRunning);

  //switch case
  String name = 'cat';
  switch (name) {
    case 'dog':
      print('It is a dog.');
      break;
    case 'cat':
      print('It is a cat!');
      break;
    default:
      print('not find.');
  }

  //break - Use break to stop looping.
  num i = 1;
  while (true) {
    print('${i} - run');
    i++;
    if (i == 5) {
      break;
    }
  }

  //continue 1
  //- Use continue to skip to the next loop iteration
  for (var i = 0; i < 5; i++) {
    if (i < 3) {
      continue;
    }
    print(i);
  }

  //continue 2
  //- Use a continue statement and a label to fall-through
  String command = 'close';
  switch (command) {
    case 'open':
      print('open');
      break;
    case 'close':
      print('close');
      continue nowClosed;

    nowClosed:
    case 'now closed':
      print('now close');
      break;

    default:
      print('nothing open');
      break;
  }
}
