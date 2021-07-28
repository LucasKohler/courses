import 'dart:io';

void main() {
  print(funcao1());
  print(funcao2());
  print(funcao3());
  print(funcao4());
}

String funcao1() {
  return 'Edson';
}

double funcao2() {
  return 2.5;
}

bool funcao3() {
  return true;
}

Future<String> funcao4() async {
  return 'xuxu';
}