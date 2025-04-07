# ATIVIDADE 02

# Diário de Aula – 03/04/2025 (referente à atividade 02)

A aula de hoje teve como foco principal o uso de **funções anônimas** em Dart aplicadas a objetos compostos, reforçando conceitos de **POO (Programação Orientada a Objetos)** como encapsulamento, composição e ações simuladas em objetos com comportamento.

## ATIVIDADE 02 – Simulação de um Pedido de Compra

**Resumo da atividade:**

O objetivo foi criar um objeto da classe `PedidoCompra`, incluindo:

- Um **Fornecedor** com **endereço completo** (Rua, Bairro, Cidade, Estado, País).
- Um **Produto** com detalhes como **Tipo**, **Categoria**, **Unidade de Medida** e seu respectivo **Fornecedor**.
- A implementação de **funções anônimas** para:
    - **Calcular o valor do frete** com base em uma distância simulada e a quantidade;
    - **Realizar o pagamento**, validando o pedido e registrando a data do pagamento.

**Exemplo de aplicação no código:**

```dart
acaoFornecedor: () {
  print("Calculando frete...");
  double distanciaSimulada = 100;
  double valorFrete = distanciaSimulada * 0.5;
  print("Valor do frete: R\$${valorFrete.toStringAsFixed(2)}");
}

```

A classe `PedidoCompra` foi instanciada com todas as dependências necessárias, como `Produto`, `Fornecedor`, `TipoProduto`, `CategoriaProduto` e `UnidadeMedida`.

Além disso, utilizamos **referência anônima (closures)** em diversos pontos para simular ações como `ajustarPreco`, `realizarCompra`, `calcularFrete` e `registrarPagamento`.

**Conceitos aplicados:**

- Funções anônimas (closures)
- Parâmetros nomeados
- Composição de objetos
- Estruturação de modelos realistas (simulação de um processo de compra completo)

**Aprendizado:**

Essa atividade permitiu entender como simular o comportamento de sistemas reais, como o processo de compra em um sistema de ERP, utilizando **POO + funções anônimas** como estratégia para representar ações de negócios.