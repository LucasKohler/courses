import 'dart:convert';
import './geo.dart';

class Address {
  String? _street, _suite, _city, _zipcode;
  Geo? _geo;

  Address(this._street, this._suite, this._city, this._zipcode, this._geo);

  Address.fromJson(String source) {
    var jsonAux = json.decode(source);
    this._street = jsonAux['street'];
    this._suite = jsonAux['suite'];
    this._city = jsonAux['city'];
    this._zipcode = jsonAux['zipcode'];
    this._geo = Geo.fromJson(json.encode(jsonAux['geo']));
  }

  String toString() {
    return '''

        "street": ${this._street},
        "suite": ${this._suite}},
        "city": ${this._city},
        "zipcode": ${this._zipcode},
        "geo": ${this._geo}''';
  }
}
