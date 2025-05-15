import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/Pergunta.dart';

class PerguntaService {
  static final PerguntaService _instance = PerguntaService._internal();

  factory PerguntaService() {
    return _instance;
  }

  PerguntaService._internal();

  final List<Pergunta> _perguntas = [
    Pergunta(
      dica: 'Rei do Pop',
      resposta: 'Michael Jackson',
      categoria: Categoria(nome: 'Pop'),
    ),
    Pergunta(
      dica: 'Banda britânica famosa por "Bohemian Rhapsody"',
      resposta: 'Queen',
      categoria: Categoria(nome: 'Rock'),
    ),
    Pergunta(
      dica: 'Cantora conhecida por "Hello"',
      resposta: 'Adele',
      categoria: Categoria(nome: 'Pop'),
    ),
  ];

  List<Pergunta> get perguntas => _perguntas;
  
  void adicionarPergunta(Pergunta pergunta) {
    _perguntas.add(pergunta);
  }
}