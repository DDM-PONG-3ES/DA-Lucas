class Categoria {
  final String nome;
  final String descricao;

  Categoria({required this.nome, required this.descricao}) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome da categoria não pode ser vazio.');
    }
    if (descricao.isEmpty) {
      throw ArgumentError('A descrição da categoria não pode ser vazia.');
    }
  }
}