import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/widget_lista.dart';

class WidgetCidadeLista extends StatelessWidget {
  var cidades = [
    {'nome': 'Paranavaí', 'estado': 'Paraná'},
    {'nome': 'São Paulo', 'estado': 'São Paulo'},
    {'nome': 'Naviraí', 'estado': 'Mato Grosso do Sul'},
  ];

  WidgetCidadeLista({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLista(
      itens: cidades,
      titulo: 'Lista de Cidades',
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
