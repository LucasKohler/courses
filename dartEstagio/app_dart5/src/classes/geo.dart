import 'dart:convert';

class Geo {
  String? _lat, _lng;

  Geo(this._lat, this._lng);

  Geo.fromJson(String source) {
    var jsonAux = json.decode(source);
    this._lat = jsonAux['lat'];
    this._lng = jsonAux['lng'];
  }

  String toString() {
    return '''

          "lat": ${this._lat},
          "lng": ${this._lng}''';
  }
}
