class Pessoa {
  String _nome;
  double _peso;

  // arrow function
  public getNome => _nome;
  public setNome(String nome) => _nome = nome;

  double get peso {
    return _peso;
  }

  void set peso(double peso) {
    _peso = peso;
  }

  // Isso é um construtor, só que é um construtor nomeado
  // Ou seja, é um construtor que tem um nome e não é o construtor padrão
  Pessoa(String nome, double peso)
  : _nome = nome,
    _peso = peso;
}