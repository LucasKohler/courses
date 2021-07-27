class Pessoa {
  String _nome;
  String _sexo;
  int _idade;
  double _salario;

  Pessoa(this._nome, this._sexo, this._idade, this._salario);

  String get nome {
    return _nome;
  }

  String get sexo {
    return _sexo;
  }

  int get idade {
    return _idade;
  }

  double get salario {
    return _salario;
  }
}
