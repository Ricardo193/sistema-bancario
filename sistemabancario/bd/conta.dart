import '../conta.dart';

class Contas {
  static List<Conta> _listaDeContas = [];

  static void cadastrar(Conta conta) {
    _listaDeContas.add(conta);
  }

  static Iterable<Conta> buscar(String numero) {
    return _listaDeContas.where((conta) => conta.numero == numero);
  }

  static void editar(Conta vConta) {
    bool validar = _listaDeContas.contains(vConta);
    if (validar) {
      var contas = buscar(vConta.numero);
      for (var conta in contas) {
        conta.agencia = vConta.agencia;
        conta.cliente = vConta.cliente;
      }
    }
  }

  static void remover(String numero) {
    _listaDeContas.removeWhere((conta) => conta.numero == numero);
  }
}
