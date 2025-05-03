class Configuracao {
  bool temaEscuro;
  int numeroDePerguntas;

  Configuracao({this.temaEscuro = true, required this.numeroDePerguntas}) {
    if (numeroDePerguntas <= 0) {
      throw ArgumentError('O número de perguntas deve ser maior que zero.');
    }
  }
}
