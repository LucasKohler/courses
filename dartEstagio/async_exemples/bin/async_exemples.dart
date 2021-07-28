import 'dart:io';

void main() {
  print('main being started');
  readNews().then((String e) => print(e));
  print('main being finished');
}

Future<String> readNews() async {
  print('Dart course STARTED!!!');
  sleep(const Duration(seconds: 3));
  return 'course being placed...';
}
