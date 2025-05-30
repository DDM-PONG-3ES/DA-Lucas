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

    Widget buildButton(String buttonText, String route, {ButtonStyle? style}) {
      return ElevatedButton(
        style: style,
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
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Text('Menu', style: TextStyle(fontSize: 24)),
            ),
            opcaoMenu(
              Icon(Icons.question_mark),
              'Cadastrar Pergunta',
              Rotas.cadastroPergunta,
            ),
            opcaoMenu(
              Icon(Icons.list_alt),
              'Lista de Perguntas',
              Rotas.listaPergunta,
            ),
            opcaoMenu(
              Icon(Icons.person),
              'Cadastrar Usuário',
              Rotas.cadastroUsuario,
            ),
            opcaoMenu(
              Icon(Icons.list_alt),
              'Lista de Usuários',
              Rotas.listaUsuario,
            ),
            opcaoMenu(
              Icon(Icons.category),
              'Cadastrar categoria',
              Rotas.cadastroCategoria,
            ),
          ],
        ),
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
                    Row(
                      children: [
                        Expanded(
                          child: buildButton(
                            'Jogar',
                            Rotas.telaQuiz,
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 30),
                            ),
                          ),
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
