import '../gerente.dart';

class Gerentes {
  static List<Gerente> _listaDeGerentes = [];

  static void cadastrar(Gerente gerente) {
    _listaDeGerentes.add(gerente);
  }

  static Iterable<Gerente> buscar(int matricula) {
    return _listaDeGerentes.where((gerente) => gerente.matricula == matricula);
  }

  static void editar(Gerente vGerente) {
    bool validar = _listaDeGerentes.contains(vGerente);

    if (validar) {
      var gerentes = buscar(vGerente.matricula);
      for (Gerente gerente in gerentes) {
        gerente.ramal = vGerente.ramal;
        gerente.salario = vGerente.salario;
        gerente.email = vGerente.email;
        gerente.endereco = vGerente.endereco;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeGerentes.removeWhere((gerente) => gerente.matricula == matricula);
  }
}
