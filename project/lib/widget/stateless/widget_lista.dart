import 'package:flutter/material.dart';

class WidgetLista extends StatelessWidget {
  final List<Map<String, String>> itens;
  final String titulo;
  final Function(int) onEditar;
  final Function(int) onExcluir;

  const WidgetLista({
    required this.itens,
    required this.titulo,
    required this.onEditar,
    required this.onExcluir,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: ListView.builder(
        itemCount: itens.length,
        itemBuilder: (context, index) {
          final item = itens[index];
          return ListTile(
            title: Text(item['nome'] ?? ''),
            subtitle: Text(item['descricao'] ?? ''),
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => onExcluir(index),
                    icon: const Icon(Icons.delete),
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () => onEditar(index),
                    icon: const Icon(Icons.edit_outlined),
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
