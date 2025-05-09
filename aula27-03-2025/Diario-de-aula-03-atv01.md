# Diário de Aula - 27/03/2025

A aula de hoje foi sobre Criação de classes.

Foi ensinado diversas formas de classes, com diferentes tipos de atributo, e construtores nomeados.

## ATIVIDADE 01

**1. O que significa o uso do operador `?` em Dart ao declarar um atributo de uma classe? Explique com um exemplo.**

Serve para indicar que o valor pode ser nulo, ou seja, o atributo não precisa ser obrigatoriamente inicializado.

**2. No código abaixo, há um erro. Qual é ele? Como corrigir?**

```dart
class Carro {
  String? marca;
  int ano;
}

```

O erro está no atributo `int ano`. Como ele não é nulo (`?`), ele precisa ser inicializado no construtor ou com valor padrão.

**3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:**

```dart
class Produto {
  String? nome;
  double? preco;
}

```

**4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:**

```dart
import 'dart:io';

void main() {
  Produto produto = Produto();

  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync() ?? 'Sem nome';

  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;

  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}

class Produto {
  String nome = "Sem nome";
  double preco = 0.0;
}

```

**5. Explique a diferença entre `?` e `late` na declaração de atributos em Dart.**

-   `?` → significa que o valor pode ser nulo
-   `late` → o valor será inicializado depois, mas **não pode ser nulo**

**6. No código abaixo, o que acontecerá se tentarmos acessar `pessoa.idade` antes de atribuir um valor? Justifique.**

```dart
class Pessoa {
  late int idade;
}

```

O Dart irá lançar uma exceção em tempo de execução, pois `late` exige que o valor seja atribuído antes do acesso.

**7. Modifique a classe Funcionario abaixo para utilizar `late` corretamente:**

```dart
class Funcionario {
  late String nome;
  late double salario;

  Funcionario({required this.nome, required this.salario});
}

```

**8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados:**

```dart
class Aluno {
  String nome;
  double nota;

  Aluno({required this.nome, required this.nota});
}

```

**9. Qual a vantagem de usar um construtor em vez de `?` ou `late`?**

Garante que os atributos serão inicializados obrigatoriamente no momento da criação do objeto.

**10. Modifique a classe abaixo para utilizar parâmetros nomeados:**

```dart
class Endereco {
  String _rua;
  String _cidade;

  Endereco({required String rua, required String cidade})
      : _rua = rua,
        _cidade = cidade;
}

```

**11. O que são métodos `get` e `set` em Dart? Pra que servem?**

Servem para acessar (get) e modificar (set) valores de atributos encapsulados de forma controlada.

**12. Implemente um `getter` para a classe Retangulo que calcule a área automaticamente:**

```dart
class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double get area => largura * altura;
}

```

**13. Modifique a classe abaixo para que o `set` de idade não permita valores negativos:**

```dart
class Pessoa {
  int _idade;

  Pessoa(this._idade);

  int get idade => _idade;

  set idade(int idade) {
    if (idade >= 0) {
      _idade = idade;
    } else {
      print('Idade inválida: não pode ser negativa.');
    }
  }
}

```

**14. Modifique a classe abaixo para que o `set` de peso não aceite valores negativos:**

```dart
class Pessoa {
  double _peso;

  Pessoa(this._peso);

  double get peso => _peso;

  set peso(double novoPeso) {
    if (novoPeso > 0) {
      _peso = novoPeso;
    } else {
      print('Peso inválido!');
    }
  }
}

```

**15. Crie uma classe `ContaBancaria` com atributos privados e um método `depositar()`:**

```dart
class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
  }
}

```

**16. Adicione um método `sacar()` com validação de saldo:**

```dart
class ContaBancaria {
  String _titular;
  double _saldo;

  ContaBancaria(this._titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente');
    }
  }
}

```

**17. Reescreva a classe Carro com construtores nomeados:**

```dart
class Carro {
  String cor;
  String modelo;
  String marca;
  String status;

  Carro({required this.cor, required this.modelo, required this.marca, required this.status});
}

```

**18. Implemente uma classe Aluno com método que verifica aprovação:**

```dart
class Aluno {
  String nome;
  double nota1, nota2, nota3, nota4;

  Aluno(this.nome, this.nota1, this.nota2, this.nota3, this.nota4);

  bool aprovado() {
    double media = (nota1 + nota2 + nota3 + nota4) / 4;
    return media >= 7;
  }
}

```

**19. Crie uma classe Produto com método `aplicarDesconto()` de 10%:**

```dart
class Produto {
  double _preco;

  Produto({required double preco}) : _preco = preco;

  void aplicarDesconto() {
    _preco *= 0.9;
  }
}

```

**20. Programa completo: Cadastro de Pessoas com validação**

```dart
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
      throw Exception('Nome inválido!');
    }
  }

  int get idade => _idade;
  set idade(int novaIdade) {
    if (novaIdade > 0) {
      _idade = novaIdade;
    } else {
      throw Exception('Idade inválida!');
    }
  }

  double get peso => _peso;
  set peso(double novoPeso) {
    if (novoPeso > 0) {
      _peso = novoPeso;
    } else {
      throw Exception('Peso inválido!');
    }
  }

  void exibirDados() {
    print('--- Dados da Pessoa ---');
    print('Nome: $_nome');
    print('Idade: $_idade anos');
    print('Peso: $_peso kg');
  }
}

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

```
