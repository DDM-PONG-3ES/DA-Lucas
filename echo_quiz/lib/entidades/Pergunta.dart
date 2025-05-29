import 'package:echo_quiz/entidades/Categoria.dart';

class Pergunta {
  final String dica;
  final String resposta;
  // Vou manter como String
  // porque a resposta pode ser tanto uma música
  // quanto um artista
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
