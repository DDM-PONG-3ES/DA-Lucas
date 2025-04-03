import 'dart:io';

import 'package:flutter_projeto/aula-27-03-2025/atv01/pessoa.dart';

void main() {
  List<Pessoa> pessoas = [];
  bool continuar = true;

  while (continuar) {
    try {
      print('Digite o nome: ');
      String nome = stdin.readLineSync() ?? '';
      if (nome.isEmpty) throw Exception('O nome não pode ser vazio.');

      print('Digite a idade:');
      int idade = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
      if (idade <= 0) throw Exception('A idade deve ser maior que 0.');

      print('Digite o peso:');
      double peso = double.tryParse(stdin.readLineSync() ?? '') ?? -1;
      if (peso <= 0) throw Exception('O peso deve ser maior que 0.');

      Pessoa pessoa = Pessoa(nome: nome, idade: idade, peso: peso);
      pessoas.add(pessoa);
      print('Pessoa cadastrada com sucesso!\n');

      print('Deseja cadastrar outra pessoa? (s/n)');
      String? resposta = stdin.readLineSync();
      if (resposta == null || resposta.toLowerCase() != 's') {
        continuar = false;
      }
    } catch (e) {
      print('Erro: ${e.toString()}');
    }
  }

  print('\n--- Lista de Pessoas Cadastradas ---');
  for (var p in pessoas) {
    p.exibirDados();
  }
}
