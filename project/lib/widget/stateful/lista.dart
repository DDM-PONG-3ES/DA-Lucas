// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Lista extends StatefulWidget {
  @override
  _Lista createState() {
    return _Lista();
  }

}

class _Lista extends State<Lista> {
  final nomes = ['Joana', 'Paulo', 'Joaquim', 'Roberto'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                nomes.add('Zeca');
              });
              print('deu certo! ${nomes.length}');
            },
            icon: const Icon(Icons.add_circle_outline),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: nomes.length,
        itemBuilder: (context, i) => Text(nomes[i]),
      ),
    );
  }
}
