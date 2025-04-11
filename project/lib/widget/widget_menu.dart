import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/widget_botao.dart';

class WidgetMenu extends StatelessWidget {
  // ignore: use_super_parameters
  const WidgetMenu({key}) : super(key: key);
  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        criarBotao(context, 'Cadastro de Estado', Rotas.estado),
        WidgetBotao(
          rota: Rotas.cidade,
          rotulo: 'Cadastro de Cidade',
        ),
        criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
      ],
    );
  }
}
