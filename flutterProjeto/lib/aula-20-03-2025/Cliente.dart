class Cliente {
  String nome;
  int idade;
  String cidade;
  String estado;

  Cliente(this.nome, this.idade, this.cidade, this.estado);

  void imprimirDados() {
    print(
        '${this.nome}, ${this.idade} ano(s), mora em ${this.cidade} - ${this.estado}');
  }
}
