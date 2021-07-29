import 'dart:convert';

class Company {
  String? _name, _catchPhrase, _bs;

  Company(this._name, this._catchPhrase, this._bs);

  Company.fromJson(String source) {
    var jsonAux = json.decode(source);
    this._name = jsonAux['name'];
    this._catchPhrase = jsonAux['catchPhrase'];
    this._bs = jsonAux['bs'];
  }

  String toString() {
    return '''
    
        "name": ${this._name},
        "catchPhrase": ${this._catchPhrase}},
        "bs": ${this._bs}
    ''';
  }
}
