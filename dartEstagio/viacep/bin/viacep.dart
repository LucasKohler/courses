import 'package:http/http.dart' as http;
import 'address.dart';
import 'dart:convert';

void main() async{
  //var url = Uri.parse('https://viacep.com.br/ws/92700780/json/');
  var url = Uri.parse('https://viacep.com.br/ws/rs/porto%20alegre/silva/json');

  var response = await http.get(url);
  print(response.statusCode);
  //print(response.body);

  //Address a = new Address.fromJson(response.body);

  //print(a.getValue('cep'));
  //print(a.getValue('bairro'));

  //List<Address> meuEnderecos = new List<Address>();
  //List<Address?> meuEnderecos = List<Address?>.filled(1, null, growable: true);
  var meusEnderecos = List<Address?>.empty(growable: true);

  var listaDeEnderecos = json.decode(response.body);

  for(Map<String, dynamic> item in listaDeEnderecos){
    meusEnderecos.add(Address.fromJson(json.encode(item)));
  }

  meusEnderecos.forEach((element) => print(element));
}
