import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/widget_cidade.dart';
import 'package:project/widget/widget_estado.dart';
import 'package:project/widget/widget_menu.dart';
import 'package:project/widget/widget_pessoa.dart';
import 'package:project/widget/widget_pessoa_lista.dart';

class Aplicativo extends StatelessWidget {
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => WidgetPessoaLista(),
        // Rotas.home: (context) => const WidgetMenu(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
      },
    );
  }
}
