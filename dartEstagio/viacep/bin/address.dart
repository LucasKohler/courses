import 'dart:convert';

class Address {
  String? _cep, _logradouro, _complemento, _bairro, _localidade, _uf, _gia;
  int? _ibge, _ddd, _siafi;

  Address(
      this._cep,
      this._logradouro,
      this._complemento,
      this._bairro,
      this._localidade,
      this._uf,
      this._ibge,
      this._gia,
      this._ddd,
      this._siafi);

  Address.fromJson(String source){
    var jsonAux = json.decode(source);
    this._cep = jsonAux['cep'];
    this._logradouro = jsonAux['logradouro'];
    this._complemento = jsonAux['complemento'];
    this._bairro = jsonAux['bairro'];
    this._localidade = jsonAux['localidade'];
    this._uf= jsonAux['uf'];
    this._ibge = int.parse(jsonAux['ibge']);
    this._gia = jsonAux['gia'];
    this._ddd = int.parse(jsonAux['ddd']);
    this._siafi = int.parse(jsonAux['siafi']);
  }

  String? getValue(String? field){
    if(field == null) return null;
    switch(field){
      case 'cep': return this._cep; break;
      case 'logradouro': return this._logradouro; break;
      case 'complemento': return this._complemento; break;
      case 'bairro': return this._bairro; break;
      case 'localidade': return this._localidade; break;
      case 'uf': return this._uf; break;
      case 'ibge': return this._ibge.toString(); break;
      case 'gia': return this._gia; break;
      case 'ddd': return this._ddd.toString(); break;
      case 'siafi': return this._siafi.toString(); break;
      default: throw Exception('nao tem relacao com campo');
    }
  }

  String toString(){
    return 'cep ${this._cep}; localidade: ${this._localidade}';
  }
}