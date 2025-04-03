class Contabancaria {
  String _titular;
  double _saldo;

  Contabancaria(String titular, double saldo)
      : _titular = titular,
        _saldo = saldo;

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente');
    }
  }
}
