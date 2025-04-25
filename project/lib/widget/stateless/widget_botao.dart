import 'package:flutter/material.dart';

class WidgetBotao extends StatelessWidget {
  final String rota;
  final String rotulo;

  const WidgetBotao({required this.rota, required this.rotulo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(rotulo),
      onPressed: () {
        Navigator.of(context).pushNamed(rota);
      },
    );
  }
}
