import 'package:flutter/material.dart';

class WidgetFormulario extends StatelessWidget {
  final String titulo;
  final List<Widget> campos;
  final VoidCallback onSalvar;

  const WidgetFormulario({
    required this.titulo,
    required this.campos,
    required this.onSalvar,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titulo)),
      body: Form(
        child: Column(
          children: [
            ...campos,
            ElevatedButton(onPressed: onSalvar, child: const Text('Salvar')),
          ],
        ),
      ),
    );
  }
}
