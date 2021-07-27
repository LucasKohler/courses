class Professor {
  var _nome;
  var _matricula;
  var _idade;

  Professor(this._nome, this._matricula, this._idade);

  String get nome {
    return _nome;
  }
}

class Ponto {
  double _x;
  double _y;

  Ponto(this._x, this._y);

  double get coordenadaX {
    return _x;
  }

  double get coordenadaY {
    return _y;
  }

  set novaCoordenadaX(double x) {
    _x = x;
  }

  set novaCoordenadaY(double y) {
    _y = y;
  }
}

void main() {
  var p1 = Professor('girafales', 50, 100000);
  // p1.nome = 'Girafales;
  // p1.matricula = 1000000;
  var p2 = Professor('fulano', 40, 100001);

  print('${p1.nome}');
}