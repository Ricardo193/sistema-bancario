import 'endereco.dart';

abstract class Pessoa {
  String? email;
  String telefoneParaContato;
  Endereco endereco;

  Pessoa({
    this.email,
    required this.telefoneParaContato,
    required this.endereco,
  });

  set setEndereco(Endereco endereco) {
    this.endereco = endereco;
  }
}
