import 'endereco.dart';
import 'pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj;
  String _razaoSocial;
  String _nomeFantasia;

  PessoaJuridica(this._cnpj, this._razaoSocial, this._nomeFantasia,
      Endereco endereco, String telefoneContato,
      [String? email])
      : super(endereco: endereco, telefoneParaContato: telefoneContato);

  String get cnpj => this._cnpj;
  String get razaoSocial => this._razaoSocial;
  String get nomeFantasia => this._nomeFantasia;
}
