import '../class/cadastro.dart';
import '../class/pessoa.dart';

main() {
  var cadastro = Cadastro(pessoas: [
    Pessoa('Nicole', 'F', 21, 2000.00),
    Pessoa('marco', 'M', 32, 2500.00),
    Pessoa('Roberto', 'M', 27, 1800.00),
    Pessoa('Carla', 'F', 28, 1100.00),
  ]);

  print('Cadastros: ${cadastro.verificarGeneros()}');
  print('${cadastro.verificarIdadeHomens()}');
  print('${cadastro.verificarIdadeMulheres()}');

  var salarios = cadastro.verificarSalarios();
  if (salarios['homens']! > salarios['mulheres']!) {
    print(
        'Homens tem média salarial de R\$${salarios['homens']}, sendo maior do que a média de R\$${salarios['mulheres']} das mulheres');
  } else {
    print(
        'Mulheres tem média salarial de R\$${salarios['mulheres']}, sendo maior do que a média de R\$${salarios['homens']} dos homens');
  }

  cadastro.removerMulheresAbaixo();
  cadastro.removerHomensAcima();
  print('${cadastro.listar}');
}
