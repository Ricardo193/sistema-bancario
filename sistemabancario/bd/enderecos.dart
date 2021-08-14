import '../endereco.dart';

class Enderecos {
  static List<Endereco> _listaDeEnderecos = [];

  static void cadastrar(Endereco endereco) {
    _listaDeEnderecos.add(endereco);
  }

  static Iterable<Endereco> buscar(String rua) {
    return _listaDeEnderecos.where((obj) => obj.rua == rua);
  }

  static void editar(Endereco vEndereco) {
    bool localizado = _listaDeEnderecos.contains(vEndereco);
    if (localizado) {
      var enderecos = buscar(vEndereco.rua);
      for (var endereco in enderecos) {
        endereco.rua = vEndereco.rua;
        endereco.bairro = vEndereco.bairro;
        endereco.cidade = vEndereco.cidade;
        endereco.estado = vEndereco.estado;
        endereco.numero = vEndereco.numero;
      }
    }
  }

  static void remover(String rua) {
    var enderecos = buscar(rua);
    for (var enderco in enderecos) {
      int indice = _listaDeEnderecos.indexOf(enderco);
      if (indice != -1) {
        _listaDeEnderecos.removeAt(indice);
      }
    }
  }
}
