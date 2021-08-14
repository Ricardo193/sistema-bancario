import 'endereco.dart';
import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  String _nome;
  String _rg;
  String _cpf;

  PessoaFisica(this._nome, this._cpf, this._rg, Endereco endereco,
      String telefoneContato,
      [String? email])
      : super(endereco: endereco, telefoneParaContato: telefoneContato);

  String get nome => this._nome;
  String get rg => this._rg;
  String get cpf => this._cpf;
}
