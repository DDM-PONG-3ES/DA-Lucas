import 'package:echo_quiz/entidades/Pontuacao.dart';

class Usuario {
  final String nome;
  final Pontuacao pontuacao;

  Usuario({required this.nome, required this.pontuacao}) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome do usuário não pode ser vazio.');
    }
  }
}
