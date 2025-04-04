import 'package:flutter_projeto/aula-27-03-2025/atv02/estrutura-classes.dart';

void main() {
  var pedidoCompra = PedidoCompra(
  fornecedor: Fornecedor(nome: "Emiliano Garcia",
   cnpj: "00.501.350/0001-31",
    endereco: "Rua das Palmeiras, 123, Bairro Centro, Curitiba, PR, Brasil",
     acaoFornecedor: () {
      print("Calculando frete...");
      double distanciaSimulada = 100;
      double valorFrete = distanciaSimulada * 0.5; // R$0,50 por km
      print("Valor do frete: R\${valorFrete.toStringAsFixed(2)}");
     }),
   produto: Produto(nome: "Camisa 1 do São Paulo",
    preco: 229.99,
     tipo: TipoProduto(),
      categoria: CategoriaProduto(),
       unidadeMedida: UnidadeMedida(),
        fornecedor: Fornecedor(),
         ajustarPreco: () {
          print("Preço: 229.99");
         }),
    quantidade,
     realizarCompra: realizarCompra)
}

class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade,
      {required this.realizarCompra});
}
