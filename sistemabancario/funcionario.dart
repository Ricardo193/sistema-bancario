import 'endereco.dart';
import 'pessoa_fisica.dart';

abstract class Funcionario extends PessoaFisica {
  int _matricula;
  int? _ramal;
  double _salario;

  //metodoConstrutor
  // Gerente(this._endereco, this._telefoneParaContato, this._ramal);
  Funcionario(this._matricula, this._salario, String nome,
      String telefoneParaContato, Endereco endereco, String rg, String cpf,
      [String? email, this._ramal])
      : super(nome, rg, cpf, endereco, telefoneParaContato, email);
  int get matricula => this._matricula;
  int? get ramal => this._ramal;
  double get salario => this._salario;

  String? get obterEndereco =>
      'Logradouro Rua ${this.endereco.rua} nº ${this.endereco.numero} no bairro ${this.endereco.bairro}/${this.endereco.cidade}';

  String? get obterContato =>
      'Tel: ${this.telefoneParaContato} / Ramal: ${this._ramal}';

  set matricula(int matricula) {
    this._matricula = _matricula;
  }

  set ramal(int? ramal) {
    this._ramal = _ramal;
  }

  set salario(double salario) => this._salario = salario;
}
