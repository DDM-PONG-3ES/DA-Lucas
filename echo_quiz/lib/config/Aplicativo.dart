import 'package:echo_quiz/config/Rotas.dart';
import 'package:echo_quiz/widgets/stateful/TelaQuizWidget.dart';
import 'package:echo_quiz/widgets/stateless/TelaCadastroPergunta.dart';
import 'package:echo_quiz/widgets/stateless/TelaHomeWidget.dart';
import 'package:flutter/material.dart';

class Aplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EchoQuiz',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        scaffoldBackgroundColor: Colors.black,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12),
          ),
        ),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.white)),
      ),
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const TelaHomeWidget(),
        Rotas.quiz: (context) => const TelaQuizWidget(),
        Rotas.cadastroPergunta: (context) => const TelaCadastroPergunta(),
      },
    );
  }
}
