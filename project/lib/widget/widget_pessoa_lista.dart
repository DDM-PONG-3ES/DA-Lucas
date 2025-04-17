import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      'nome': 'Mr. Burns',
      'telefone': '(44) 9 9999-9999',
      'url':
          'https://cdn.pixabay.com/photo/2016/03/27/17/42/man-1283237_1280.jpg',
    },
    {
      'nome': 'Tirica',
      'telefone': '(44) 9 4002-8922',
      'url':
          'https://cdn.pixabay.com/photo/2016/03/31/20/27/actor-1295772_1280.png',
    },
    {
      'nome': 'Neymar',
      'telefone': '(44) 9 3245-6589',
      'url':
          'https://cdn.pixabay.com/photo/2017/08/17/19/54/neymar-2652631_1280.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista pessoas")),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder:
            (context, contador) => ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${pessoas[contador]['url']}'),
              ),
              title: Text('${pessoas[contador]['nome']}'),
              subtitle: Text('${pessoas[contador]['telefone']}'),
              trailing: SizedBox(
                width: 100,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete), color: Colors.red,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit_outlined), color: Colors.orange,),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
