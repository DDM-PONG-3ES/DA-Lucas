import 'package:echo_quiz/entidades/services/PerguntaService.dart';
import 'package:echo_quiz/entidades/services/UsuarioService.dart';
import 'package:flutter/material.dart';

class TelaListaPerguntaWidget extends StatelessWidget {
  final PerguntaService _perguntaService = PerguntaService();

  TelaListaPerguntaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final perguntas = _perguntaService.perguntas;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Colors.red.shade900],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '${perguntas.length} perguntas cadastradas',
                style: TextStyle(fontSize: 16, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Expanded(
                child:
                    perguntas.isEmpty
                        ? const Center(
                          child: Text(
                            'Nenhuma pergunta cadastrada',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                        : ListView.builder(
                          itemCount: perguntas.length,
                          itemBuilder: (context, index) {
                            final pergunta = perguntas[index];
                            return Card(
                              margin: const EdgeInsets.only(bottom: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              color: Colors.grey[850],
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Colors.orange,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          pergunta.resposta[0],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            pergunta.resposta,
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Text(
                                            'Dica: ${pergunta.dica}',
                                            style: const TextStyle(
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
