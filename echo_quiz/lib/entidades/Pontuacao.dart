class Pontuacao {
  int valor;

  Pontuacao({this.valor = 0});

  void incrementar(int pontos) {
    if (pontos < 0) {
      throw ArgumentError('Os pontos não podem ser negativos.');
    }
    valor += pontos;
  }

  void resetar() {
    valor = 0;
  }
}
