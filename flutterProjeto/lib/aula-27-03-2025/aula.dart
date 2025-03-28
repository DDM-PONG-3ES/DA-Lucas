import 'dart:io';

import 'package:namer_app/aula03/pessoa.dart';

void main() {
  print("olá mundo!");

  Pessoa pessoa1 = new Pessoa();
  Pessoa pessoa2 = new Pessoa();
  Pessoa pessoa3 = new Pessoa();

  var x1 = 10;
  var x2 = x1;
  var x3 = x2;

  var pessoa4 = Pessoa();
  var pessoa5 = pessoa4; // copiou o endereço de pessoa 1
  var pessoa6 = pessoa5; // se mudar o pessoa4, muda tudo

  x1 = 50;

  Pessoa pessoa7 = new Pessoa();
  print('nome:');
  pessoa7.nome = stdin.readLineSync();
  print('aula peso');
  pessoa7.peso = double.parse(stdin.readLineSync()!);

  print('pessoa: ${pessoa7.nome} ${pessoa7.peso}');
}