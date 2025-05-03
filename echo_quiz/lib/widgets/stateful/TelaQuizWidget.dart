import 'package:flutter/material.dart';

class TelaQuizWidget extends StatefulWidget {
  const TelaQuizWidget({Key? key}) : super(key: key);

  @override
  State<TelaQuizWidget> createState() => _EstadoTelaQuiz();
}

class _EstadoTelaQuiz extends State<TelaQuizWidget> {
  final List<Map<String, String>> _questoes = [
    {'dica': 'Rei do Pop', 'resposta': 'Michael Jackson'},
    {
      'dica': 'Banda britânica famosa por "Bohemian Rhapsody"',
      'resposta': 'Queen',
    },
    {'dica': 'Cantora conhecida por "Hello"', 'resposta': 'Adele'},
  ];

  int _atualIndiceQuestao = 0;
  bool _respostaAMostra = false;

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
      _atualIndiceQuestao = (_atualIndiceQuestao + 1) % _questoes.length;
      _respostaAMostra = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questaoAtual = _questoes[_atualIndiceQuestao];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Dica: ${questaoAtual['dica']}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            if (_respostaAMostra)
              Text(
                'Resposta: ${questaoAtual['resposta']}',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
                textAlign: TextAlign.center,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _respostaAMostra ? _esconderResposta : _mostrarResposta,
              child: Text(_respostaAMostra ? 'Esconder Resposta' : 'Revelar Resposta'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _proximaPergunta,
              child: const Text('Próxima Pergunta'),
            ),
          ],
        ),
      ),
    );
  }
}
