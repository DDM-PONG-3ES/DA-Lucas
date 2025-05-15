import 'package:echo_quiz/config/Rotas.dart';
import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/Historico.dart';
import 'package:echo_quiz/entidades/Pergunta.dart';
import 'package:echo_quiz/entidades/Pontuacao.dart';
import 'package:echo_quiz/entidades/services/PerguntaService.dart';
import 'package:echo_quiz/widgets/stateful/TelaCadastroPergunta.dart';
import 'package:flutter/material.dart';

class TelaQuizWidget extends StatefulWidget {
  const TelaQuizWidget({Key? key}) : super(key: key);

  @override
  State<TelaQuizWidget> createState() => _EstadoTelaQuiz();
}

class _EstadoTelaQuiz extends State<TelaQuizWidget> {
  final PerguntaService _perguntaService = PerguntaService();

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
      _atualIndicePergunta =
          (_atualIndicePergunta + 1) % _perguntaService.perguntas.length;
      _respostaAMostra = false;
    });
  }

  void _responder(bool acertou) {
    setState(() {
      _historico.add(
        Historico(
          pergunta: _perguntaService.perguntas[_atualIndicePergunta],
          acertou: acertou,
        ),
      );
      if (acertou) {
        _pontuacao.incrementar(10);
      }
      _proximaPergunta();
    });
  }

  @override
  Widget build(BuildContext context) {
    final questaoAtual = _perguntaService.perguntas[_atualIndicePergunta];

    return Scaffold(
      appBar: AppBar(title: const Text('Quiz'), backgroundColor: Colors.red),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pergunta ${_atualIndicePergunta + 1} de ${_perguntaService.perguntas.length}',
              style: TextStyle(fontSize: 14, color: Colors.grey[400]),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 1),
                ),
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Text(
                  'Dica: ${questaoAtual.dica}',
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 20),

            if (_respostaAMostra)
              Container(
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Resposta: ${questaoAtual.resposta}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _proximaPergunta,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Próxima'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed:
                        _respostaAMostra ? _esconderResposta : _mostrarResposta,
                    icon: Icon(
                      _respostaAMostra
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    label: Text(_respostaAMostra ? 'Esconder' : 'Revelar'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      backgroundColor:
                          _respostaAMostra ? Colors.grey[700] : Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(
                  context, Rotas.cadastroPergunta,
                );
              },
              icon: const Icon(Icons.add),
              label: const Text('Cadastrar nova pergunta'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
