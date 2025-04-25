import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/stateless/widget_lista.dart';

class WidgetPessoaLista extends StatelessWidget {
  final pessoas = [
    {'nome': 'Mr. Burns', 'descricao': '(44) 9 9999-9999'},
    {'nome': 'Tirica', 'descricao': '(44) 9 4002-8922'},
    {'nome': 'Neymar', 'descricao': '(44) 9 3245-6589'},
  ];

  WidgetPessoaLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetLista(
      itens: pessoas,
      titulo: 'Lista de Pessoas',
      onEditar: (index) {
        Navigator.pushNamed(context, Rotas.pessoa);
      },
      onExcluir: (index) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exclusão!'),
            content: const Text('Pessoa excluída com sucesso!'),
          ),
        );
      },
    );
  }
}