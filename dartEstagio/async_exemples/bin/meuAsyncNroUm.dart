import 'dart:io';

void main() async {
  print('Jogando o jogo A');
  var test = await games();
  print(test);
}

Future<String> games() async {
  sleep(Duration(seconds: 5));
  return 'Jogando o jogo B';
}

