import 'package:flutter/material.dart';
import 'package:project/widget/widget_formulario.dart';
import 'package:project/widget/widget_pessoa_lista.dart';

class WidgetPessoa extends StatelessWidget {
  const WidgetPessoa({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WidgetFormulario(
      titulo: 'Cadastro de Pessoa',
      campos: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Nome',
            hintText: 'Insira o nome da pessoa',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Sobrenome',
            hintText: 'Insira o sobrenome da pessoa',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Telefone',
            hintText: 'Insira o telefone da pessoa',
          ),
        ),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(labelText: 'Cidade'),
          items: const [
            DropdownMenuItem(value: '1', child: Text('Paranavaí')),
            DropdownMenuItem(value: '2', child: Text('São Paulo')),
            DropdownMenuItem(value: '3', child: Text('Naviraí')),
          ],
          onChanged: (value) {},
        ),
      ],
      onSalvar: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WidgetPessoaLista()),
        );
      },
    );
  }
}
