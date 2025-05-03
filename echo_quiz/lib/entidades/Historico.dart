import 'package:echo_quiz/entidades/Pergunta.dart';

class Historico {
  final Pergunta pergunta;
  final bool acertou;

  Historico({required this.pergunta, required this.acertou});
}