import 'dart:io';

class Pessoa {
  // Atributos privados
  String _nome;
  int _idade;
  double _peso;

  // Construtor com validação
  Pessoa({required String nome, required int idade, required double peso})
      : _nome = nome,
        _idade = idade,
        _peso = peso;

  // Getter e Setter para nome com validação
  String get nome => _nome;
  set nome(String novoNome) {
    if (novoNome.isNotEmpty) {
      _nome = novoNome;
    } else {
      throw Exception('Nome inválido! O nome não pode ser vazio.');
    }
  }

  // Getter e Setter para idade com validação
  int get idade => _idade;
  set idade(int novaIdade) {
    if (novaIdade > 0) {
      _idade = novaIdade;
    } else {
      throw Exception('Idade inválida! A idade deve ser maior que 0.');
    }
  }

  // Getter e Setter para peso com validação
  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) {
      _peso = novoPeso;
    } else {
      throw Exception('Peso inválido! O peso deve ser maior que 0.');
    }
  }

  // Método para exibir os dados da pessoa
  void exibirDados() {
    print('--- Dados da Pessoa ---');
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('Peso: $_peso kg');
  }
}

void main() {
  try {
    // Solicitando o nome
    print('Digite o nome:');
    String nome = stdin.readLineSync() ?? '';
    if (nome.isEmpty) throw Exception('O nome não pode ser vazio.');

    // Solicitando a idade
    print('Digite a idade:');
    int idade = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (idade <= 0) throw Exception('A idade deve ser maior que 0.');

    // Solicitando o peso
    print('Digite o peso:');
    double peso = double.tryParse(stdin.readLineSync() ?? '') ?? -1;
    if (peso <= 0) throw Exception('O peso deve ser maior que 0.');

    // Criando a instância da classe Pessoa
    Pessoa pessoa = Pessoa(nome: nome, idade: idade, peso: peso);

    // Exibindo os dados da pessoa
    pessoa.exibirDados();
  } catch (e) {
    print('Erro: ${e.toString()}');
  }
}
