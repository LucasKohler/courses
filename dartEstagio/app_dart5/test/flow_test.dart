import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../src/classes/user.dart';

void main(){
  var url;
  var response;
  setUp(() async {
    url = Uri.parse('https://jsonplaceholder.typicode.com/users/');
    response = await http.get(url);
  });
  group('teste de fluxo', (){
    test('Conexão co mservidor ok', () {
      expect(response.statusCode, equals(200));
    });
    test('Criação de objeto a partir de dado do site', () {
      var userList = List.of(json.decode(response.body).map((element) => (User.fromJson(json.encode(element)))));

      expect(userList[0].getValue('id'), equals('1'));
    });
  });
}