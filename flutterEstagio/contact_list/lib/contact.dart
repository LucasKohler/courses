enum Gender { M, F, O }

class Contact {
  String _name;
  Gender _gender;
  String _phone;
  String _email;

  Contact(this._name, this._gender, this._phone, this._email);

  String get name => _name;
  String get gender => _gender.toString();
  String get phone => _phone;
  String get email => _email;
}
