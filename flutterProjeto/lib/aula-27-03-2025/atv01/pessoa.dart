import 'dart:io';

class Pessoa {
  String _nome;
  int _idade;
  double _peso;

  Pessoa({required String nome, required int idade, required double peso})
      : _nome = nome,
        _idade = idade,
        _peso = peso;

  String get nome => _nome;
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      throw Exception('Nome inválido! O nome não pode ser vazio.');
    }
  }

  int get idade => _idade;
  set idade(int novaIdade) {
    if (novaIdade > 0) {
      _idade = novaIdade;
    } else {
      throw Exception('Idade inválida! A idade deve ser maior que 0.');
    }
  }

  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) {
      _peso = novoPeso;
    } else {
      throw Exception('Peso inválido! O peso deve ser maior que 0.');
    }
  }

  void exibirDados() {
    print('\n--- Dados da Pessoa ---');
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('Peso: $_peso kg');
  }
}

void main() {
  try {
    print('Digite o nome:');
    String nome = stdin.readLineSync() ?? '';
    if (nome.isEmpty) throw Exception('O nome não pode ser vazio.');

    print('Digite a idade:');
    int idade = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (idade <= 0) throw Exception('A idade deve ser maior que 0.');

    print('Digite o peso:');
    double peso = double.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (peso <= 0) throw Exception('O peso deve ser maior que 0.');

    Pessoa pessoa = Pessoa(nome: nome, idade: idade, peso: peso);

    pessoa.exibirDados();
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
