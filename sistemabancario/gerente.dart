import 'endereco.dart';
import 'funcionario.dart';

class Gerente extends Funcionario {
  Gerente(int matricula, double salario, String nome, String rg, String cpf,
      Endereco endereco, String telefoneContato, [String? email, int? ramal])
      : super(matricula, salario, nome, telefoneContato, endereco, rg, cpf,
            email, ramal);
}
