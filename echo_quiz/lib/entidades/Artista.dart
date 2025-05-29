import 'package:echo_quiz/entidades/Musica.dart';

class Artista {
  final String nome;
  final List<Musica> musicas;

  Artista({required this.nome, required this.musicas}) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome do artista não pode ser vazio.');
    }
  }
}
