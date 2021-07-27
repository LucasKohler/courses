Function f5(){
  return (x) => x + 1;
}

int f7(x, Function f){
  return f(x) * 2;
}

void main(){
  var f1 = (a) => a * 3;
  assert(f1(3) == 9);

  var f2 = (x)
  {
    var tmp = 'nada';
    if (x%2 == 0) {
      tmp = 'par';
    } else {
      tmp = 'impar';
    }
    return tmp;
  };

  var f3 = () => 42;
  var f4 = (x, y) => x + y;
  var f6 = f5();

  print(f2(5));
  print(f3());
  print(f4(1,2));
  print(f6(5));
  print(f7(8,f6));
  print(f7(8,f1));
  print('----------------');

  var lista = [1,2,3,4];
  lista.forEach((x) => print(x*2));

  lista.forEach((x){
    (x % 2 == 0) ? print('$x é par') : print('$x é impar');
    // if (x % 2 == 0) {
    //  print('$x é par');
    //} else {
    //  print('$x é ímpar');
    //}
  });

  var listaTelefonica = {
    // chave : valor
    'Fulano' : 1111,
    'Ciclano' : 2222,
    'Beltrano' : 3333,
  };

  listaTelefonica.forEach((key, value) {
    print('Chave: $key --> Valor: $value');
  });

  var lista1 = [2,2,4,2,7,9];
  var lista2 = List.from(lista1);
  var listaPares = [];
  for(var i in lista1) {
    if (i % 2 == 0) {
      listaPares.add(i);
    }
  }

  for(var i in listaPares) {
    lista1.remove(i);
  }

  print(lista1);

  lista2.removeWhere((x) => x % 2 == 0 );
  print(lista2);
}