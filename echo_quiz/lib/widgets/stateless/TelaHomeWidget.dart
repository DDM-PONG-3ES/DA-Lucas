import 'package:echo_quiz/config/Rotas.dart';
import 'package:echo_quiz/widgets/stateful/TelaQuizWidget.dart';
import 'package:flutter/material.dart';

class TelaHomeWidget extends StatelessWidget {
  const TelaHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget opcaoMenu(Icon icone, String titulo, String rota) {
      return ListTile(
        leading: icone,
        title: Text(titulo),
        onTap: () {
          Navigator.pushNamed(context, rota);
        },
      );
    }

    Widget buildButton(
      String buttonText,
      ButtonStyle buttonStyle,
      String route,
    ) {
      return ElevatedButton(
        style: buttonStyle,
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(buttonText),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('EchoQuiz'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.red.shade900],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'EchoQuiz',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Teste seus conhecimentos musicais!',
                      style: TextStyle(fontSize: 18, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: buildButton(
                                'Jogar',
                                ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 20,
                                  ),
                                  backgroundColor: Colors.red,
                                  foregroundColor: Colors.white,
                                ),
                                Rotas.telaQuiz,
                              ),
                            ),
                            const SizedBox(width: 30),
                            Expanded(
                              child: buildButton(
                                'Cadastrar Pergunta',
                                ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 20,
                                  ),
                                  backgroundColor: Colors.red[900],
                                  foregroundColor: Colors.white,
                                ),
                                Rotas.cadastroPergunta,
                              ),
                            ),
                          ],
                        ),
                        buildButton(
                          'Cadastrar Usuário',
                          ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 20,
                            ),
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          Rotas.cadastroUsuario,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
