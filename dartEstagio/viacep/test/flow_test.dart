import 'package:test/test.dart';
import 'package:http/http.dart' as http;
import '../bin/address.dart';

void main(){
  var url;
  var response;
  setUp(() async {
    url = Uri.parse('https://viacep.com.br/ws/90619900/json/');
    response = await http.get(url);
  });
  group('teste de fluxo', (){
    test('Conexão co mservidor ok', () {
      expect(response.statusCode, equals(200));
    });
    test('Criação de objeto a partir de dado do site', () {
      Address a = Address.fromJson(response.body);
      expect(a.getValue('cep'), equals('90619-900'));
    });
  });
}