import 'pessoa.dart';
import 'agencia.dart';

abstract class Conta {
  String _numero;
  Agencia _agencia;
  Pessoa _cliente;
  double _saldo;

  Conta(this._numero, this._agencia, this._cliente, this._saldo);

  String get numero => this._numero;
  Agencia get agencia => this._agencia;
  Pessoa get cliente => this._cliente;
  double get saldo => this._saldo;

  set numero(String numero) {
    this._numero = numero;
  }

  set agencia(Agencia agencia) {
    this._agencia = agencia;
  }

  set cliente(Pessoa cliente) {
    this._cliente = cliente;
  }

  double obterSaldo() {
    return this._saldo;
  }

  double sacar(double valor) {
    this._saldo = this._saldo - valor;
    return valor;
  }

  bool depositar(double valor) {
    this._saldo = this._saldo + valor;
    return true;
  }

//Meu código
  bool tranferecia(double valor, Conta contaOrigem, Conta contaFinal) {
    contaOrigem.sacar(valor);
    contaFinal.depositar(valor);
    return true;
  }

//Sor
  bool tranfereciaSor(double valor, Conta contaFinal) {
    this.sacar(valor);
    contaFinal.depositar(valor);
    return true;
  }
}
