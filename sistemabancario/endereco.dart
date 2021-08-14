class Endereco {
  //tipo nome
  String _rua;
  String _numero;
  String _bairro;
  String _cidade;
  String _estado;

  Endereco(this._rua, this._numero, this._bairro, this._cidade, this._estado);

  //getters
  String get rua {
    return this._rua;
  }

  String get numero => this._numero;

  String get bairro => this._bairro;

  String get cidade => this._cidade;

  String get estado => this._estado;

  //setters
  set rua(String rua) {
    this._rua = rua;
  }

  set numero(String numero) {
    this._numero = numero;
  }

  set bairro(String bairro) {
    this._bairro = bairro;
  }

  set cidade(String cidade) {
    this._cidade = cidade;
  }

  set estado(String estado) {
    this._estado = estado;
  }

  // @override
  // String toString() {
  //   return "Rua $rua n° $numero, bairro $bairro - $cidade/$estado";
  // }
  @override //sobreescrito
  String toString() => "Rua $rua n° $numero, bairro $bairro - $cidade/$estado";
}
