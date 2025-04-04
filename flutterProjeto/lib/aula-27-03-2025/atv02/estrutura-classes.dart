class Fornecedor {
  String nome;
  String cnpj;
  String endereco;
  void Function() acaoFornecedor;

  Fornecedor(this.nome, this.cnpj, this.endereco,
      {required this.acaoFornecedor});
}

class Funcionario {
  String nome;
  String cargo;
  double salario;
  void Function(String) calculaSalarioBonus;

  Funcionario(this.nome, this.cargo, this.salario,
      {required this.calculaSalarioBonus});
}

class Departamento {
  String nome;
  Funcionario gerente;
  void Function() acaoDepartamento;

  Departamento(this.nome, this.gerente, {required this.acaoDepartamento});
}

class Cliente {
  String nome;
  String endereco;
  void Function() atualizarEndereco;

  Cliente(this.nome, {required this.endereco, required this.atualizarEndereco});
}

class Cidade {
  String nome;
  String estado;
  void Function(String) alterarEstado;

  Cidade(this.nome, this.estado, {required this.alterarEstado});
}

class Estado {
  String nome;
  String pais;
  void Function() mudarPais;

  Estado(this.nome, {required this.pais, required this.mudarPais});
}

class Pais {
  String nome;
  void Function() exibirPais;

  Pais(this.nome, {required this.exibirPais});
}

class PedidoVenda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  void Function() concluirVenda;

  PedidoVenda(this.cliente, this.produto, this.quantidade,
      {required this.concluirVenda});
}

class PedidoCompra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  void Function() realizarCompra;

  PedidoCompra(this.fornecedor, this.produto, this.quantidade,
      {required this.realizarCompra});
}

class Produto {
  String nome;
  double preco;
  TipoProduto tipo;
  CategoriaProduto categoria;
  UnidadeMedida unidadeMedida;
  Fornecedor fornecedor;
  void Function() ajustarPreco;

  Produto(this.nome, this.preco, this.tipo, this.categoria,
      {required this.unidadeMedida,
      required this.fornecedor,
      required this.ajustarPreco});
}

class TipoProduto {
  String descricao;
  void Function() exibirTipo;

  TipoProduto(this.descricao, {required this.exibirTipo});
}

class CategoriaProduto {
  String nome;
  String descricao;
  void Function() exibirCategoria;

  CategoriaProduto(this.nome, this.descricao, {required this.exibirCategoria});
}

class UnidadeMedida {
  String nome;
  String simbolo;
  void Function() atualizarUnidade;

  UnidadeMedida(this.nome,
      {required this.simbolo, required this.atualizarUnidade});
}

class ProdutoEstoque {
  Produto produto;
  int quantidade;
  void Function() ajustarEstoque;

  ProdutoEstoque(this.produto, this.quantidade, {required this.ajustarEstoque});
}

class PrecoProduto {
  Produto produto;
  double precoVenda;
  double precoCusto;
  double margemLucro;
  void Function() calcularMargemLucro;

  PrecoProduto(this.produto, this.precoVenda, this.precoCusto, this.margemLucro,
      {required this.calcularMargemLucro});
}

class HistoricoPreco {
  Produto produto;
  DateTime dataAlteracao;
  double precoAntigo;
  double precoNovo;
  void Function() registrarAlteracao;

  HistoricoPreco(
      this.produto, this.dataAlteracao, this.precoAntigo, this.precoNovo,
      {required this.registrarAlteracao});
}

class ProdutoDesconto {
  Produto produto;
  double percentualDesconto;
  DateTime dataInicio;
  DateTime dataFim;
  void Function() aplicarDesconto;

  ProdutoDesconto(
      this.produto, this.percentualDesconto, this.dataInicio, this.dataFim,
      {required this.aplicarDesconto});
}

class ProdutoLote {
  Produto produto;
  String numeroLote;
  DateTime dataFabricacao;
  DateTime dataValidade;
  void Function() verificarLote;

  ProdutoLote(
      this.produto, this.numeroLote, this.dataFabricacao, this.dataValidade,
      {required this.verificarLote});
}

class ProdutoLocalizacao {
  Produto produto;
  String corredor;
  String prateleira;
  void Function() atualizarLocalizacao;

  ProdutoLocalizacao(this.produto, this.corredor, this.prateleira,
      {required this.atualizarLocalizacao});
}

class ProdutoObservacao {
  Produto produto;
  String observacao;
  void Function() registrarObservacao;

  ProdutoObservacao(this.produto, this.observacao,
      {required this.registrarObservacao});
}

class GarantiaProduto {
  Produto produto;
  int anosGarantia;
  String tipoGarantia;
  void Function() ativarGarantia;

  GarantiaProduto(this.produto, this.anosGarantia, this.tipoGarantia,
      {required this.ativarGarantia});
}

class ProdutoDisponibilidade {
  Produto produto;
  bool disponivel;
  String status;
  void Function() atualizarStatus;

  ProdutoDisponibilidade(this.produto, this.disponivel, this.status,
      {required this.atualizarStatus});
}

class AvaliacaoProduto {
  Produto produto;
  int numeroEstrelas;
  String comentario;
  void Function() registrarAvaliacao;

  AvaliacaoProduto(this.produto, this.numeroEstrelas, this.comentario,
      {required this.registrarAvaliacao});
}

class ImagemProduto {
  Produto produto;
  String urlImagem;
  void Function() exibirImagem;

  ImagemProduto(this.produto,
      {required this.urlImagem, required this.exibirImagem});
}

class TamanhoProduto {
  Produto produto;
  String tamanho;
  void Function() atualizarTamanho;

  TamanhoProduto(this.produto,
      {required this.tamanho, required this.atualizarTamanho});
}

class CorProduto {
  Produto produto;
  String cor;
  void Function() alterarCor;

  CorProduto(this.produto, {required this.cor, required this.alterarCor});
}

class PesoProduto {
  Produto produto;
  double peso;
  void Function() atualizarPeso;

  PesoProduto(this.produto, {required this.peso, required this.atualizarPeso});
}

class VolumeProduto {
  Produto produto;
  double volume;
  void Function() ajustarVolume;

  VolumeProduto(this.produto,
      {required this.volume, required this.ajustarVolume});
}

class EmbalagemProduto {
  Produto produto;
  String tipoEmbalagem;
  double pesoEmbalagem;
  void Function() alterarEmbalagem;

  EmbalagemProduto(this.produto,
      {required this.tipoEmbalagem,
      required this.pesoEmbalagem,
      required this.alterarEmbalagem});
}

class Estoque {
  Produto produto;
  int quantidade;
  void Function() atualizarEstoque;

  Estoque(this.produto, this.quantidade, {required this.atualizarEstoque});
}

class Venda {
  Cliente cliente;
  Produto produto;
  int quantidade;
  DateTime dataVenda;
  void Function() registrarVenda;

  Venda(this.cliente, this.produto, this.quantidade, this.dataVenda,
      {required this.registrarVenda});
}

class Compra {
  Fornecedor fornecedor;
  Produto produto;
  int quantidade;
  DateTime dataCompra;
  void Function() registrarCompra;

  Compra(this.fornecedor, this.produto, this.quantidade, this.dataCompra,
      {required this.registrarCompra});
}

class CompraLote {
  Compra compra;
  String numeroLote;
  DateTime dataEntrega;
  void Function() verificarLoteCompra;

  CompraLote(this.compra, this.numeroLote, this.dataEntrega,
      {required this.verificarLoteCompra});
}

class PedidoVendaEntrega {
  PedidoVenda pedidoVenda;
  DateTime dataEntrega;
  String enderecoEntrega;
  void Function() organizarEntrega;

  PedidoVendaEntrega(this.pedidoVenda, this.dataEntrega, this.enderecoEntrega,
      {required this.organizarEntrega});
}

class PedidoCompraFrete {
  PedidoCompra pedidoCompra;
  double valorFrete;
  DateTime dataEnvio;
  void Function() calcularFrete;

  PedidoCompraFrete(this.pedidoCompra, this.valorFrete, this.dataEnvio,
      {required this.calcularFrete});
}

class PedidoCompraPagamento {
  PedidoCompra pedidoCompra;
  double valorPago;
  DateTime data;
  void Function() registrarPagamento;

  PedidoCompraPagamento(this.pedidoCompra, this.valorPago, this.data,
      {required this.registrarPagamento});
}
