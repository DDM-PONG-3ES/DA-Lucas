class Categoria {
  final String nome;

  Categoria({required this.nome}) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome da categoria não pode ser vazio.');
    }
  }
}