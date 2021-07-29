import 'package:test/test.dart';
import '../bin/address.dart';

void main() {
  group('Adress object test', () {
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

    test('Teste de criação do objeto', () {
      Address a = Address.fromJson(string);
      expect(a.getValue('cep'), equals('90619-900'));

    });

    test('getValue com parametro nulo', () {
      Address a = Address.fromJson(string);
      expect(a.getValue(null), isNull);
    });

    test('getValue com paramentro errado', () {
      Address a = Address.fromJson(string);
      expect(() => a.getValue('Edson'), throwsException);

    });
  });

  group('int', () {
    test('.remainder() returns the remainder of division', () {
      expect(11.remainder(3), equals(2));
    });

    test('.toRadixString() returns a hex string', () {
      expect(11.toRadixString(16), equals('b'));
    });
  });
}
