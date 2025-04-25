import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _Formulario createState() {
    return _Formulario();
  }
}

class _Formulario extends State<Formulario> {
  String _nome = '';
  var _nomeController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulário de Cadastro')),
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(label: Text('Nome')),
              controller: _nomeController,
              onSaved: (newValue) => _nome = _nomeController.text,
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.length < 3) {
                  return 'Nome deve ter pelo menos 3 caracteres';
                }
                return null;
              },
            ),

            TextFormField(
              decoration: const InputDecoration(label: Text('E-mail')),
              validator: (valorDigitado) {
                if (valorDigitado == null ||
                    valorDigitado.contains("@") == false) {
                  return 'E-mail deve ter @';
                }
                return null;
              },
            ),

            ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  print('deu certo!');
                } else {
                  print('deu errado!');
                }
              },
              child: const Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
