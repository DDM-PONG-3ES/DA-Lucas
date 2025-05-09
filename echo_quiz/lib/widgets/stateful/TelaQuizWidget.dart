import 'package:echo_quiz/config/Rotas.dart';
import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/Historico.dart';
import 'package:echo_quiz/entidades/Pergunta.dart';
import 'package:echo_quiz/entidades/Pontuacao.dart';
import 'package:flutter/material.dart';

class TelaQuizWidget extends StatefulWidget {
  const TelaQuizWidget({Key? key}) : super(key: key);

  @override
  State<TelaQuizWidget> createState() => _EstadoTelaQuiz();
}

class _EstadoTelaQuiz extends State<TelaQuizWidget> {
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

  int _atualIndicePergunta = 0;
  bool _respostaAMostra = false;
  final Pontuacao _pontuacao = Pontuacao();
  final List<Historico> _historico = [];

  void _mostrarResposta() {
    setState(() {
      _respostaAMostra = true;
    });
  }

  void _esconderResposta() {
    setState(() {
      _respostaAMostra = false;
    });
  }

  void _proximaPergunta() {
    setState(() {
      _atualIndicePergunta = (_atualIndicePergunta + 1) % _perguntas.length;
      _respostaAMostra = false;
    });
  }

  void _responder(bool acertou) {
    setState(() {
      _historico.add(
        Historico(pergunta: _perguntas[_atualIndicePergunta], acertou: acertou),
      );
      if (acertou) {
        _pontuacao.incrementar(10);
      }
      _proximaPergunta();
    });
  }

  @override
  Widget build(BuildContext context) {
    final questaoAtual = _perguntas[_atualIndicePergunta];

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz'), backgroundColor: Colors.red),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Dica: ${questaoAtual.dica}',
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            if (_respostaAMostra)
              Text(
                'Resposta: ${questaoAtual.resposta}',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed:
                  _respostaAMostra ? _esconderResposta : _mostrarResposta,
              child: Text(
                _respostaAMostra ? 'Esconder Resposta' : 'Revelar Resposta',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _proximaPergunta,
              child: const Text('Próxima Pergunta'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, Rotas.cadastroPergunta);
              },
              child: const Text('Cadastrar uma nova Pergunta'),
            ),
          ],
        ),
      ),
    );
  }
}
