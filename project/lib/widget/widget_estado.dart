import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro de Estado')),
      body: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nome: ',
                hintText: 'Informe o nome do estado',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Sigla: ',
                hintText: 'Informe a sigla do estado',
              ),
            ),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Região: '),
              items: const [
                DropdownMenuItem(value: 'Norte', child: Text('Norte')),
                DropdownMenuItem(value: 'Nordeste', child: Text('Nordeste')),
                DropdownMenuItem(
                  value: 'Centro-Oeste',
                  child: Text('Centro-Oeste'),
                ),
                DropdownMenuItem(value: 'Sul', child: Text('Sul')),
                DropdownMenuItem(value: 'Sudeste', child: Text('Sudeste')),
              ],
              onChanged: (value) {
                print('Região selecionada: $value');
              },
            ),
          ],
        ),
      ),
    );
  }
}
