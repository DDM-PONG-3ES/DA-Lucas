import 'dart:developer';

import 'package:flutter_projeto/aula-27-03-2025/atv02/estrutura-classes.dart';
import 'package:flutter_projeto/aula-27-03-2025/atv02/objetos-padrao.dart';

void main() {
  // Exercício 1 - Fornecedor
  void exercicio1() {
    var fornecedor = Fornecedor(
      'Roberto Firmino',
      '12345678901234',
      'Rua Margarida, 123',
      acaoFornecedor: () {
        print('Ação do fornecedor executada!');
      },
    );
  }

  // Exercício 2 - Produto
  void exercicio2() {
    var produto = Produto(
        "Macbook", 2599.99, tipoProdutoPadrao, categoriaProdutoPadrao,
        unidadeMedida: unidadeMedidaPadrao,
        fornecedor: fornecedorPadrao, ajustarPreco: () {
      print("Preço ajustado!");
    });
  }

  // Exercício 3 - PedidoVenda
  void exercicio3() {
    var pedidoVenda =
        PedidoVenda(clientePadrao, produtoPadrao, 5, concluirVenda: () {
      print('Venda concluída');
    });
  }

  // Exercício 4 - Funcionario
  void exercicio4() {
    var funcionario = Funcionario("Roberto", "Gerente Regional", 4789.54,
        calculaSalarioBonus: (bonus) {
      print("Parabéns! Você ganhou um bônus de: $bonus!");
    });
  }

  // Exercício 5 - ProdutoLote
  void exercicio5() {
    var produtoLote = ProdutoLote(
        produtoPadrao,
        "2564",
        DateTime.utc(2025, 11, 9),
        DateTime.utc(2025, 12, 1), verificarLote: () {
      print("Lote verificado e auditado!");
    });
  }

  // Exercício 6 - PedidoCompra
  void exercicio6() {
    var pedidoCompra =
        PedidoCompra(fornecedorPadrao, produtoPadrao, 2500, realizarCompra: () {
      print("Compra efetuada com sucesso!");
    });
  }

  // Exercício 7 - Estoque
  void exercicio7() {
    var estoque = Estoque(produtoPadrao, 7500, atualizarEstoque: () {
      print("Estoque atualizado!");
    });
  }

  // Exercício 8 - AvaliacaoProduto
  void exercicio8() {
    var avaliacaoProduto = AvaliacaoProduto(
        produtoPadrao, 4, "Bem doce, só que estraga muito rápido",
        registrarAvaliacao: () {
      print("Avaliação registrada com sucesso!");
    });
  }

  // Exercício 9 - ProdutoDesconto
  void exercicio9() {
    var produtoDesconto = ProdutoDesconto(
        produtoPadrao, 15, DateTime.utc(2025, 4, 2), DateTime.utc(2025, 4, 9),
        aplicarDesconto: () {
      print("Desconto aplicado com sucesso!");
    });
  }

  // Exercício 10 - PedidoCompraFrete
  void exercicio10() {
    var pedidoCompraFrete = PedidoCompraFrete(
        pedidoCompraPadrao, 140, DateTime.utc(2025, 3, 29), calcularFrete: () {
      print("Calculando frete...");
    });
  }

  // Exercício 11 - PedidoVendaEntrega
  void exercicio11() {
    var pedidoVenda = PedidoVendaEntrega(
        pedidoVendaPadrao, DateTime.utc(2025, 04, 01), "Jardim Arapongas, 1357",
        organizarEntrega: () {
      print("Organizando entrega...");
    });
  }

  // Exercício 12 - Produto com Garantia
  void exercicio12() {
    var produtoGarantia = GarantiaProduto(
      produtoPadrao,
      2,
      "Garantia Estendida",
      ativarGarantia: () {
        print("Garantia ativada com sucesso!");
      },
    );
  }

  // Exercício 13 - Pedido de Venda com Desconto
  void exercicio13() {
    var pedidoVendaDesconto = ProdutoDesconto(
      produtoPadrao,
      10,
      DateTime.utc(2025, 4, 1),
      DateTime.utc(2025, 4, 10),
      aplicarDesconto: () {
        print("Desconto aplicado ao pedido de venda!");
      },
    );
  }

  // Exercício 14 - Produto com Status
  void exercicio14() {
    var produtoStatus = ProdutoDisponibilidade(
      produtoPadrao,
      true,
      "Disponível",
      atualizarStatus: () {
        print("Status do produto atualizado!");
      },
    );
  }

  // Exercício 15 - Fornecedor com Condições de Pagamento
  void exercicio15() {
    var fornecedorCondicaoPagamento = Fornecedor(
      "Fornecedor XYZ",
      "98765432100123",
      "Rua das Flores, 456",
      acaoFornecedor: () {
        print("Condições de pagamento: 5 parcelas de R\$200,00.");
      },
    );
  }

  // Exercício 16 - Pedido de Compra com Atraso
  void exercicio16() {
    var pedidoCompraAtraso = PedidoCompra(
      fornecedorPadrao,
      produtoPadrao,
      100,
      realizarCompra: () {
        print("Verificando atraso na entrega...");
      },
    );
  }

  // Exercício 17 - Produto com Data de Validade
  void exercicio17() {
    var produtoValidade = ProdutoLote(
      produtoPadrao,
      "Lote123",
      DateTime.utc(2025, 3, 1),
      DateTime.utc(2025, 6, 1),
      verificarLote: () {
        print("Validade do produto verificada!");
      },
    );
  }

  // Exercício 18 - Pedido de Venda com Frete Expresso
  void exercicio18() {
    var pedidoVendaFreteExpresso = PedidoVendaEntrega(
      pedidoVendaPadrao,
      DateTime.utc(2025, 4, 5),
      "Rua Rápida, 789",
      organizarEntrega: () {
        print("Custo do frete expresso calculado!");
      },
    );
  }

  // Exercício 19 - Produto com Restrição de Idade
  void exercicio19() {
    var produtoRestricaoIdade = Produto(
      "Jogo de Tabuleiro",
      99.99,
      tipoProdutoPadrao,
      categoriaProdutoPadrao,
      unidadeMedida: unidadeMedidaPadrao,
      fornecedor: fornecedorPadrao,
      ajustarPreco: () {
        print("Produto restrito para maiores de 12 anos.");
      },
    );
  }

  // Exercício 20 - Cliente com Preferências
  void exercicio20() {
    var clientePreferencias = Cliente(
      "João",
      endereco: "Rua Preferencial, 321",
      atualizarEndereco: () {
        print("Preferências: Produtos eletrônicos, pagamento via cartão.");
      },
    );
  }

  exercicio1();
  exercicio2();
  exercicio3();
  exercicio4();
  exercicio5();
  exercicio6();
  exercicio7();
  exercicio8();
  exercicio9();
  exercicio10();
  exercicio11();
  exercicio12();
  exercicio13();
  exercicio14();
  exercicio15();
  exercicio16();
  exercicio17();
  exercicio18();
  exercicio19();
  exercicio20();

  print("Objetos Instanciados!");
}
