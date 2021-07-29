import 'package:test/test.dart';
import '../bin/address.dart';

void main() {
  test('Address object creation', () {
    var string = '''{
        "cep": "90619-900",
        "logradouro": "Avenida Ipiranga 6681",
        "complemento": "",
        "bairro": "Partenon",
        "localidade": "Porto Alegre",
        "uf": "RS",
        "ibge": "4314902",
        "gia": "",
        "ddd": "51",
        "siafi": "8801"
  }''';
    Address testAddress = new Address.fromJson(string);
    expect(testAddress.getValue('cep'), equals('90619-900'));
  });

  test('Address object manipulation', () {
    var string = '''{
        "cep": "90619-900",
        "logradouro": "Avenida Ipiranga 6681",
        "complemento": "",
        "bairro": "Partenon",
        "localidade": "Porto Alegre",
        "uf": "RS",
        "ibge": "4314902",
        "gia": "",
        "ddd": "51",
        "siafi": "8801"
  }''';
    Address testAddress = new Address.fromJson(string);
    expect(testAddress.getValue('ddd'), equals('51'));
  });
}
