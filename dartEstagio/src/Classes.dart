class Professor {
  var _nome;
  var _matricula;
  var _idade;

  Professor(this._nome, this._matricula, this._idade);
}

void main() {
  var p1 = Professor('girafales', 50, 100000);
  // p1.nome = 'Girafales;
  // p1.matricula = 1000000;
  var p2 = Professor('fulano', 40, 100001);
}