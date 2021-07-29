import 'dart:convert';
import './address.dart';
import './company.dart';

class User {
  int? _id;
  String? _name, _username, _email, _phone, _website;
  Address? _address;
  Company? _company;

  User(this._id, this._name, this._username, this._email, this._phone,
      this._website, this._address, this._company);

  User.fromJson(String source) {
    var jsonAux = json.decode(source);
    this._id = jsonAux['id'];
    this._name = jsonAux['name'];
    this._username = jsonAux['username'];
    this._email = jsonAux['email'];
    this._phone = jsonAux['phone'];
    this._website = jsonAux['website'];
    this._address = Address.fromJson(json.encode(jsonAux['address']));
    this._company = Company.fromJson(json.encode(jsonAux['company']));
  }

  String? getValue(String? field) {
    if (field == null) return null;
    switch (field) {
      case 'id':
        return this._id.toString();
      case 'name':
        return this._name;
      case 'username':
        return this._username;
      case 'email':
        return this._email;
      case 'phone':
        return this._phone;
      case 'website':
        return this._website;
      case 'address':
        return this._address.toString();
      case 'company':
        return this._company.toString();
      default:
        throw Exception('nao tem relacao com campo');
    }
  }

  String toString() {
    return '''
      "id": ${getValue('id')},
      "name": ${getValue('name')},
      "username": ${getValue('username')},
      "email": ${getValue('email')},
      "address": ${getValue('address')}
      "phone": ${getValue('phone')},
      "website": ${getValue('website')},
      "company": ${getValue('company')}
    ------------------------------------  
    ''';
  }
}
