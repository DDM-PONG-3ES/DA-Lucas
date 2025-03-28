// exercicio 18
class Aluno {
  String nome;
  double nota1;
  double nota2;
  double nota3;
  double nota4;

  Aluno(String nome, double nota1, double nota2, double nota3, double nota4)
      : nome = nome,
        nota1 = nota1,
        nota2 = nota2,
        nota3 = nota3,
        nota4 = nota4;

  bool aprovado() {
    double media = (nota1 + nota2 + nota3 + nota4) / 4;
    return media >= 7;
  }
}
