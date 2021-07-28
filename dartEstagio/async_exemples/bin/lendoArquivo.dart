import 'dart:io';

main() {
  print('abrindo arquivo');
  leArquivo();
  print('fim da leitura');
}

void leArquivo() async {
  File meuArquivo = new File('nomes.txt');

  //Future future = meuArquivo.readAsLines();

  // future.then(
  //    (e) => e.forEach((b) => print(b))
  // );

  var lista = await meuArquivo.readAsLines();
  lista.forEach((e) => print(e));
}