import 'dart:io';

import 'dart:io';

import 'package:flutter_projeto/aula/Cliente.dart';
import 'package:flutter_projeto/aula/Validacoes.dart';

void main() {
  int id;
  String nome;
  int idade;
  double peso;
  var cidade;
  var estado;

  String? resposta;
  print('informe o seu nome:');
  resposta = stdin.readLineSync()!;
  nome = resposta;
  Validacoes.validarNome(nome);

  print('informe a sua idade:');
  resposta = stdin.readLineSync();
  idade = int.parse(resposta!);
  Validacoes.validarIdade(idade);

  print('informe a sua cidade:');
  resposta = stdin.readLineSync();
  cidade = resposta;
  Validacoes.validarCidade(cidade);

  print('informe o seu estado:');
  resposta = stdin.readLineSync();
  estado = resposta;
  Validacoes.validarEstado(estado);

  var cliente = new Cliente(nome, idade, cidade, estado);

  cliente.imprimirDados();
}
