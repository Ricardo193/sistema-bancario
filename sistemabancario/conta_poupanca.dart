import 'agencia.dart';
import 'pessoa.dart';
import 'conta.dart';

class ContaPoupanca extends Conta {
  int _aniversario;
  double _rendimento;

  ContaPoupanca(this._aniversario, String vNumero, Agencia vAgencia,
      Pessoa vCliente, double vSaldo,
      [this._rendimento = 0.02])
      : super(vNumero, vAgencia, vCliente, vSaldo);

  int get aniversario => this._aniversario;

  void render() {
    double saldo = this.obterSaldo() * this._rendimento;
    this.depositar(saldo);
  }
}
