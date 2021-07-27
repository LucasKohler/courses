void main(){
  var lista1 = [1,2,3,4,null,'abc'];
  assert(1 == lista1[0]);
  //assert(lista1.length == 5);
  assert(lista1.first == 1);
  //assert(lista1.last == null);
  lista1.add(10);
  lista1.remove(4); // remove por objeto
  lista1.removeAt(0); // remove por posição
  //lista1.add('abc');
  print(lista1);

  var lista2 = const [3,4,2,1];
  print(lista2);
  //lista2.sort();
  lista2 = [];
  print(lista2);

  var lista3 = [1,2,3];
  var lista4 = [0, ...lista3];
  // var lista5 = lista3; // cópia de referência
  var lista5 = List.from(lista3); // cópia de objetos
  lista5.add(20);

  List<int>? lista6 = null;
  lista6 = [1,2,3];
  //var lista7 = [0, ...?lista6]; // warning
  var lista7 = [0, ...lista3];

  print('lista 3: $lista3');
  print('lista 4: $lista4');
  print('lista 5: $lista5');
  print('lista 6: $lista6');
  print('lista 7: $lista7');

  var promocao = false;
  var nav = [
    'Casa',
    'Decoracao',
    'plantas',
    if (promocao) 'Ferramentas',
    'Banheiro',
    for (var i in [1,2,3,4,5,6,7,8])
      if (i % 2 == 0) '$i'
      else 'x',
    ... lista3
  ];

  for (var x in nav) {
    print('${x.toString()}: ${x.runtimeType.toString()}');
  }
  
  var listaModificada = nav.where((x) => x.runtimeType == int);
  print(listaModificada);


  var nomes = <String>{};

  nomes.add('Fulano');
  nomes.addAll(['Beltrano','Ciclano']);
  nomes.add('Fulano');
  print(nomes.elementAt(1));
  print(nomes);
  print(nomes.length);
  print(nomes.elementAt(1));
  print('---------------------');
  for (var nome in nomes) {
    print(nome);
  }

  var nada = <String>{};
  var conj2 = {1, ...nada};

  var nomes2 = <Object>{
    for(int i in [1,2,3,4]) '$i',
    for(String s in nomes)
      if(s.startsWith('F'))
        s.toUpperCase(),
    // ...lista5
  };

  print(nomes2);

  var listaTelefonica = {
    // chave : valor
    'Fulano' : 1111,
    'Ciclano' : 2222,
    'Beltrano' : 3333,
  };

  print(listaTelefonica['Ciclano']);
  print('Ciclano: ' + listaTelefonica['Ciclano'].toString());
  print(listaTelefonica[null]);
  print('Chaves: ' + listaTelefonica.keys.toString());
  print('Valores: ' + listaTelefonica.values.toString());
  listaTelefonica.remove('Ciclano');
  print(listaTelefonica);
  print(listaTelefonica.containsKey('Ciclano'));
  listaTelefonica.removeWhere((key, value) => key == null || value == null);
  print(listaTelefonica);
  listaTelefonica.update('Fulano', (value) => 5555);
  print(listaTelefonica);

  var listaTelefonica2 = Map.fromIterables(['a','b','c','d'], [1,2,3,4]);
  print(listaTelefonica2);
}