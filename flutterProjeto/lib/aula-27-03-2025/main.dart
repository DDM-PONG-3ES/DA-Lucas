import 'dart:io';

import 'cidade.dart';
import 'estado.dart';
import 'pessoa.dart';
import 'pessoa2.dart';

void main() {
  print('peso: ');
  var peso = double.parse(stdin.readLineSync()!);
  var pessoa = Pessoa2(
    altura: 1.80,
    nome: 'João',
    peso: peso,
    cidade: Cidade(
      estado: Estado(nome: 'São Paulo', sigla: 'SP'),
      logradouro: 'Rua 1',
      bairro: 'Centro',
      cep: '12345-678',
      nome: 'São Paulo',
    ),
    imc: peso / (1.80 * 1.80),
  );
}
