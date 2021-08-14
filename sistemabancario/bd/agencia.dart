import '../agencia.dart';

class Agencias {
  static List<Agencia> _listaDeAgencias = [];

  static void cadastrar(Agencia agencia) {
    _listaDeAgencias.add(agencia);
  }

  static Iterable<Agencia> buscar(int numero) {
    return _listaDeAgencias.where((agencia) => agencia.numero == numero);
  }

  static void editar(Agencia vAgencia) {
    bool validar = _listaDeAgencias.contains(vAgencia);
    if (validar) {
      var agencias = buscar(vAgencia.numero);
      for (var agencia in agencias) {
        agencia.endereco = vAgencia.endereco;
        agencia.gerente = vAgencia.gerente;
      }
    }
  }

  static void remover(int numero) {
    _listaDeAgencias.removeWhere((agencia) => agencia.numero == numero);
  }
}
