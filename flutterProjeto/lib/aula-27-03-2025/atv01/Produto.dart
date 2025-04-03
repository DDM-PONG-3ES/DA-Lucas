class Produto {
  double _preco;

  Produto({required double preco}) : _preco = preco;

  void aplicarDesconto() {
    _preco = _preco * 0.9;
  }
}
