import 'package:flutter/material.dart';
import 'package:project/configuracao/rotas.dart';
import 'package:project/widget/stateless/widget_lista.dart';

class WidgetEstadoLista extends StatelessWidget {
  var estados = [
    {'nome': 'Acre', 'sigla': 'AC'},
    {'nome': 'Alagoas', 'sigla': 'AL'},
    {'nome': 'Amapá', 'sigla': 'AP'},
    {'nome': 'Amazonas', 'sigla': 'AM'},
    {'nome': 'Bahia', 'sigla': 'BA'},
    {'nome': 'Ceará', 'sigla': 'CE'},
    {'nome': 'Distrito Federal', 'sigla': 'DF'},
    {'nome': 'Espírito Santo', 'sigla': 'ES'},
    {'nome': 'Goiás', 'sigla': 'GO'},
    {'nome': 'Maranhão', 'sigla': 'MA'},
    {'nome': 'Mato Grosso', 'sigla': 'MT'},
    {'nome': 'Mato Grosso do Sul', 'sigla': 'MS'},
    {'nome': 'Minas Gerais', 'sigla': 'MG'},
    {'nome': 'Pará', 'sigla': 'PA'},
    {'nome': 'Paraíba', 'sigla': 'PB'},
    {'nome': 'Paraná', 'sigla': 'PR'},
    {'nome': 'Pernambuco', 'sigla': 'PE'},
    {'nome': 'Piauí', 'sigla': 'PI'},
    {'nome': 'Rio de Janeiro', 'sigla': 'RJ'},
    {'nome': 'Rio Grande do Norte', 'sigla': 'RN'},
    {'nome': 'Rio Grande do Sul', 'sigla': 'RS'},
    {'nome': 'Rondônia', 'sigla': 'RO'},
    {'nome': 'Roraima', 'sigla': 'RR'},
    {'nome': 'Santa Catarina', 'sigla': 'SC'},
    {'nome': 'São Paulo', 'sigla': 'SP'},
    {'nome': 'Sergipe', 'sigla': 'SE'},
    {'nome': 'Tocantins', 'sigla': 'TO'},
  ];

  WidgetEstadoLista({super.key});

  @override
  Widget build(BuildContext context) {
    return WidgetLista(
      itens: estados,
      titulo: 'Lista de Estados',
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
