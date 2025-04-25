import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/stateful/formulario.dart';
import 'package:project/widget/stateful/lista.dart';
import 'package:project/widget/stateless/widget_cidade.dart';
import 'package:project/widget/stateless/widget_cidade_lista.dart';
import 'package:project/widget/stateless/widget_estado.dart';
import 'package:project/widget/stateless/widget_estado_lista.dart';
import 'package:project/widget/stateless/widget_menu.dart';
import 'package:project/widget/stateless/widget_pessoa.dart';
import 'package:project/widget/stateless/widget_pessoa_lista.dart';

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
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.pessoasLista: (context) => WidgetPessoaLista(),
        Rotas.estadosLista: (context) => WidgetEstadoLista(),
        Rotas.cidadesLista: (context) => WidgetCidadeLista(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.listaNomes: (context) => Lista(),
        Rotas.formulario: (context) => Formulario(),
      },
    );
  }
}
