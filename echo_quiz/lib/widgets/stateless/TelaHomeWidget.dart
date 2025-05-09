import 'package:echo_quiz/config/Rotas.dart';
import 'package:echo_quiz/widgets/stateful/TelaQuizWidget.dart';
import 'package:flutter/material.dart';

class TelaHomeWidget extends StatelessWidget {
  const TelaHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EchoQuiz'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            minimumSize: const Size(150, 60),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, Rotas.quiz);
          },
          child: const Text('Começar'),
        ),
      ),
    );
  }
}
