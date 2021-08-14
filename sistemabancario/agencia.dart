import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int _numero;
  Gerente _gerente;
  Endereco _endereco;

  Agencia(this._numero, this._endereco, this._gerente);

  int get numero => this._numero;
  Gerente get gerente => this._gerente;
  Endereco get endereco => this._endereco;

  set numero(int numero) {
    this._numero = numero;
  }

  set gerente(Gerente gerente) {
    this._gerente = gerente;
  }

  set endereco(Endereco endereco) {
    this._endereco = endereco;
  }
}
