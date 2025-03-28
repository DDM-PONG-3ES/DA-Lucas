# Diário de Aula \- 27/03/2025

A aula de hoje foi sobre Criação de classes.  
Foi ensinado diversas formas de classes, com diferentes tipos de atributo, e construtores nomeados.

## ATIVIDADE 01

1. O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo.

	  
	Serve para acessar as propriedades de um objeto sem estourar uma exceção caso o objeto seja nulo

2. No código abaixo, há um erro. Qual é ele? Como corrigir?  
   class Carro {  
     String? marca;  
     int ano;  
   }

	  
	O erro está no atributo ‘int ano’. Como está definido como uma variável não-nula ela deve ser inicializada

3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:  
   class Produto {  
     String? nome;  
     double? preco;  
   }  
     
4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:  
   import 'dart:io';  
     
   void main() {  
     Produto produto \= Produto();  
     print('Digite o nome do produto:');  
     produto.nome \= stdin.readLineSync();  
     print('Digite o preço do produto:');  
     produto.preco \= double.tryParse(stdin.readLineSync() ?? '0');  
     print('Produto: ${produto.nome}, Preço: ${produto.preco}');  
   }  
   class Produto {  
     String nome \= “Sem nome”;  
     double preco \= 0.0;  
   }  
5. Explique a diferença entre ? e late na declaração de atributos em Dart.

	

* ? \-\> significa que o valor pode ser nulo  
* late \-\> o valor será inicializado mais tarde, mas não será nulo

6. No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique.  
   class Pessoa {  
     late int idade;  
   }  
     
     
   O Dart irá lançar uma exceção em tempo de execução  
     
7. Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:  
   class Funcionario {  
     late String nome;  
     late double salario;  
     
     Funcionario({required this.nome, required this.salario});  
   }  
     
8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.

	  
	class Aluno {  
  String nome;  
  double nota;

  Aluno ({required this.nome, required this.nota});  
}

9. Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?

	  
	Você vai garantir que os atributos serão inicializados, porque isso vai se tornar obrigatório ao usar um construtor.

10. Modifique o código abaixo para utilizar parâmetros nomeados no construtor:

	class Endereco {  
  String \_rua;  
  String \_cidade;  
    
  Endereco({required String rua, required String cidade})   
	:	this.\_rua: rua;  
		this.\_cidade: cidade

}

11. O que são métodos get e set em Dart? Pra que servem?

	  
	São métodos para retornar e definir valores de atributos dentro da classe

12. Implemente um getter para a classe Retangulo que calcule a área automaticamente

	class Retangulo {  
  double largura;  
  double altura;  
  double area;  
    
  Retangulo(this.largura, this.altura);

  double get area \=\> largura \* altura;  
}

13. Modifique a classe abaixo para que o set de idade não permita valores negativos

	class Pessoa {  
  int idade;  
    
  Pessoa(this.idade);

   void set idade(int idade) {  
    if (idade \>= 0\) {  
      \_idade \= idade;  
    } else {  
      print('Idade inválida: não pode ser negativa.');  
    }  
  }

}

14. Modifique a classe abaixo para que o set de idade não permita valores negativos:

    class Pessoa {

      double \_peso;

      

      double get peso \=\> \_peso;

      set peso(double novoPeso) {

        if (novoPeso \> 0\) \_peso \= novoPeso;

      }

      

      Pessoa(this.\_peso);

    }

    

    ????

    

15. Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.

class Contabancaria {  
  String \_titular;  
  double \_saldo;

  Contabancaria(String titular, double saldo)  
      : \_titular \= titular,  
        \_saldo \= saldo;

  void depositar(double valor) {  
    \_saldo \+= valor;  
  }  
}

16. Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo.

class Contabancaria {  
  String \_titular;  
  double \_saldo;

  Contabancaria(String titular, double saldo)  
      : \_titular \= titular,  
        \_saldo \= saldo;

  void depositar(double valor) {  
    \_saldo \+= valor;  
  }

  void sacar(double valor) {  
    if (\_saldo \>= valor) {  
      \_saldo \-= valor;  
    } else {  
      print('Saldo insuficiente');  
    }  
  }  
}

17. Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).

class Carro {  
  String cor;  
  String modelo;  
  String marca;  
  String status; // zeroKm ou usado

  Carro(String cor, String modelo, String marca, String status)  
      : cor \= cor,  
        modelo \= modelo,  
        marca \= marca,  
        status \= status;  
}

18. Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7\.

// exercicio 18  
class Aluno {  
  String nome;  
  double nota1;  
  double nota2;  
  double nota3;  
  double nota4;

  Aluno(String nome, double nota1, double nota2, double nota3, double nota4)  
      : nome \= nome,  
        nota1 \= nota1,  
        nota2 \= nota2,  
        nota3 \= nota3,  
        nota4 \= nota4;

  bool aprovado() {  
    double media \= (nota1 \+ nota2 \+ nota3 \+ nota4) / 4;  
    return media \>= 7;  
  }  
}

19. Crie uma classe Produto que tenha um atributo preco e aplique um desconto fixo de 10% ao chamar um método aplicarDesconto().

class Produto {  
  double \_preco;

  Produto({required double preco}) : \_preco \= preco;

  void aplicarDesconto() {  
    \_preco \= \_preco \* 0.9;  
  }  
}

20. Crie um programa que utilize tudo o que foi aprendido, simulando um sistema de cadastro de pessoas, onde o usuário pode inserir nome, idade e peso, com validação dos dados antes de exibi-los na tela.

import 'dart:io';

class Pessoa {  
  String \_nome;  
  int \_idade;  
  double \_peso;

  Pessoa({required String nome, required int idade, required double peso})  
      : \_nome \= nome,  
        \_idade \= idade,  
        \_peso \= peso;

  String get nome \=\> \_nome;  
  set nome(String novoNome) {  
    if (novoNome.isNotEmpty) {  
      \_nome \= novoNome;  
    } else {  
      throw Exception('Nome inválido\! O nome não pode ser vazio.');  
    }  
  }

  int get idade \=\> \_idade;  
  set idade(int novaIdade) {  
    if (novaIdade \> 0) {  
      \_idade \= novaIdade;  
    } else {  
      throw Exception('Idade inválida\! A idade deve ser maior que 0.');  
    }  
  }

  double get peso \=\> \_peso;  
  set peso(double novoPeso) {  
    if (novoPeso \> 0) {  
      \_peso \= novoPeso;  
    } else {  
      throw Exception('Peso inválido\! O peso deve ser maior que 0.');  
    }  
  }

  void exibirDados() {  
    print('--- Dados da Pessoa \---');  
    print('Nome: $\_nome');  
    print('Idade: $\_idade anos');  
    print('Peso: $\_peso kg');  
  }  
}

void main() {  
  try {  
    print('Digite o nome:');  
    String nome \= stdin.readLineSync() ?? '';  
    if (nome.isEmpty) throw Exception('O nome não pode ser vazio.');

    print('Digite a idade:');  
    int idade \= int.tryParse(stdin.readLineSync() ?? '') ?? \-1;  
    if (idade \<= 0) throw Exception('A idade deve ser maior que 0.');

    print('Digite o peso:');  
    double peso \= double.tryParse(stdin.readLineSync() ?? '') ?? \-1;  
    if (peso \<= 0) throw Exception('O peso deve ser maior que 0.');

    Pessoa pessoa \= Pessoa(nome: nome, idade: idade, peso: peso);

    pessoa.exibirDados();  
  } catch (e) {  
    print('Erro: ${e.toString()}');  
  }  
}

