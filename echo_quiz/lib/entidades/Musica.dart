import 'package:echo_quiz/entidades/Categoria.dart';

class Musica {
  final String titulo;
  final String artista;
  final Categoria categoria;

  Musica({
    required this.titulo,
    required this.artista,
    required this.categoria,
  }) {
    if (titulo.isEmpty) {
      throw ArgumentError('O título da música não pode ser vazio.');
    }
    if (artista.isEmpty) {
      throw ArgumentError('O nome do artista não pode ser vazio.');
    }
  }
}
