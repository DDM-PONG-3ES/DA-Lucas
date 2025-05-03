import 'package:echo_quiz/entidades/Categoria.dart';

class Pergunta {
  final String dica;
  final String resposta;
  final Categoria categoria;

  Pergunta({
    required this.dica,
    required this.resposta,
    required this.categoria,
  }) {
    if (dica.isEmpty) {
      throw ArgumentError('A dica não pode ser vazia.');
    }
    if (resposta.isEmpty) {
      throw ArgumentError('A resposta não pode ser vazia.');
    }
    if (categoria.nome.isEmpty) {
      throw ArgumentError('O nome da categoria não pode ser vazio.');
    }
  }
}
