import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  stdout.write('Digite um CEP: ');
  var cep = stdin.readLineSync().toString();

  var url = Uri.parse('https://viacep.com.br/ws/$cep/json/');
  var response = await http.get(url);
  var data = json.decode(response.body);

  stdout.write('Resposta: $data');
}
