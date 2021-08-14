import '../caixa_operador.dart';

class CaixaOperadores {
  static List<CaixaOperador> _listaDeCaixaOperadores = [];

  static void cadastrar(CaixaOperador caixa) {
    _listaDeCaixaOperadores.add(caixa);
  }

  static Iterable<CaixaOperador> buscar(int matricula) {
    return _listaDeCaixaOperadores
        .where((caixas) => caixas.matricula == matricula);
  }

  static void editar(CaixaOperador vCaixa) {
    bool validar = _listaDeCaixaOperadores.contains(vCaixa);
    if (validar) {
      var caixas = buscar(vCaixa.matricula);

      for (var caixa in caixas) {
        caixa.ramal = vCaixa.ramal;
        caixa.salario = vCaixa.salario;
        caixa.telefoneParaContato = vCaixa.telefoneParaContato;
        caixa.endereco = vCaixa.endereco;
        caixa.email = vCaixa.email;
      }
    }
  }

  static void remover(int matricula) {
    _listaDeCaixaOperadores
        .removeWhere((caixa) => caixa.matricula == matricula);
  }
}
