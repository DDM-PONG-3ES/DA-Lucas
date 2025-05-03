import 'package:echo_quiz/widgets/stateful/TelaQuizWidget.dart';
import 'package:flutter/material.dart';

class TelaHomeWidget extends StatelessWidget {
  const TelaHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EchoQuiz')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TelaQuizWidget()),
            );
          },
          child: const Text('Começar'),
        ),
      ),
    );
  }
}
