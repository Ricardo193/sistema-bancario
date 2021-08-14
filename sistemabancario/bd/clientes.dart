import '../pessoa.dart';

class Clientes {
  static List<Pessoa> _listaDeClientes = [];

  static void cadastrar(Pessoa cliente) {
    _listaDeClientes.add(cliente);
  }

  static Iterable<Pessoa> buscar(String telefone) {
    return _listaDeClientes
        .where((cliente) => cliente.telefoneParaContato == telefone);
  }

  static void editar(Pessoa vCliente) {
    bool validar = _listaDeClientes.contains(vCliente);
    if (validar) {
      var clientes = buscar(vCliente.telefoneParaContato);

      for (var cliente in clientes) {
        cliente.email = vCliente.email;
        cliente.endereco = vCliente.endereco;
      }
    }
  }

  static void remover(String telefone) {
    _listaDeClientes
        .removeWhere((cliente) => cliente.telefoneParaContato == telefone);
  }
}
