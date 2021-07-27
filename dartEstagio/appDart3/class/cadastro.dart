import './pessoa.dart';

class Cadastro {
  List<Pessoa> pessoas;
  Map<String, double> mediaSalarial = {};

  Cadastro({this.pessoas = const []});

  Iterable<String> get listar {
    var pessoas = this.pessoas.map((pessoa) => pessoa.nome);
    return pessoas;
  }

  String verificarGeneros() {
    var generos = pessoas.map((e) => e.sexo);
    if (generos.contains('M') && !generos.contains('F')) {
      return 'Há apenas homens cadastrados';
    } else if (!generos.contains('M') && generos.contains('F')) {
      return 'Há apenas mulheres cadastradas';
    } else {
      return 'Há homens e mulheres cadastrados';
    }
  }

  String verificarIdadeHomens() {
    var homens = pessoas.where((e) => e.sexo == 'M');
    var idadeHomens = homens
        .map((homem) => homem.idade)
        .reduce((accumulator, idade) => (accumulator += idade));

    return 'média de idade masculina = ${idadeHomens / homens.length}';
  }

  String verificarIdadeMulheres() {
    var mulheres = pessoas.where((e) => e.sexo == 'F');
    var idadeMulheres = mulheres
        .map((mulher) => mulher.idade)
        .reduce((accumulator, idade) => (accumulator += idade));

    return 'média de idade masculina = ${idadeMulheres / mulheres.length}';
  }

  Map<String, double> verificarSalarios() {
    var homens = pessoas.where((e) => e.sexo == 'M');
    var salarioHomens = homens
        .map((homem) => homem.salario)
        .reduce((accumulator, salario) => (accumulator += salario));

    var mulheres = pessoas.where((e) => e.sexo == 'F');
    var salarioMulheres = mulheres
        .map((mulher) => mulher.salario)
        .reduce((accumulator, salario) => (accumulator += salario));

    mediaSalarial = {
      'homens': salarioHomens / homens.length,
      'mulheres': salarioMulheres / mulheres.length
    };

    return mediaSalarial;
  }

  void removerMulheresAbaixo() {
    var paraRemover = [];
    var mulheres = pessoas
        .where((e) => e.sexo == 'F' && e.salario < mediaSalarial['mulheres']!);
    if (mulheres.isNotEmpty) {
      mulheres.forEach((mulher) {
        paraRemover.add(mulher);
      });
      pessoas.removeWhere((e) => paraRemover.contains(e));
      print(
          'foram removidas do cadastro: ${paraRemover.map((mulher) => mulher.nome)}}');
    }
  }

  void removerHomensAcima() {
    var paraRemover = [];
    var homens = pessoas
        .where((e) => e.sexo == 'M' && e.salario > mediaSalarial['homens']!);
    if (homens.isNotEmpty) {
      homens.forEach((homem) {
        paraRemover.add(homem);
      });
      pessoas.removeWhere((e) => paraRemover.contains(e));
      print(
          'foram removidos do cadastro: ${paraRemover.map((homem) => homem.nome)}}');
    }
  }
}
