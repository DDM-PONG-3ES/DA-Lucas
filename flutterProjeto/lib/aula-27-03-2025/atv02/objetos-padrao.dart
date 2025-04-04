import 'estrutura-classes.dart';

// Objetos referentes ao exercício 2
final tipoProdutoPadrao = TipoProduto(
  'Tipo Padrão',
  exibirTipo: () => print('Tipo: Tênis Esportivo'),
);

final categoriaProdutoPadrao = CategoriaProduto(
  'Standard',
  'Categoria geral abrangente',
  exibirCategoria: () => print('Categoria: Calçados'),
);

final unidadeMedidaPadrao = UnidadeMedida(
  'Unidade',
  simbolo: 'un',
  atualizarUnidade: () => print('Unidade de medida: un'),
);

final fornecedorPadrao = Fornecedor(
  'Emiliano',
  '21288944000186',
  'Rua do Emiliano, 472',
  acaoFornecedor: () => print('Ação do Fornecedor concluída!'),
);

final clientePadrao =
    Cliente("Lucas", endereco: "Rua Exemplar, 1229", atualizarEndereco: () {
  print("Endereço atualizado");
});

final produtoPadrao = Produto(
    "Manga", 2.99, tipoProdutoPadrao, categoriaProdutoPadrao,
    unidadeMedida: unidadeMedidaPadrao,
    fornecedor: fornecedorPadrao, ajustarPreco: () {
  print("Preço ajustado!");
});

final pedidoCompraPadrao =
    PedidoCompra(fornecedorPadrao, produtoPadrao, 1700, realizarCompra: () {
  print("Compra efetuada com sucesso!");
});

final pedidoVendaPadrao =
    PedidoVenda(clientePadrao, produtoPadrao, 5, concluirVenda: () {
  print('Venda concluída');
});
