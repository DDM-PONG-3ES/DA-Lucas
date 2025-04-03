import 'estado.dart';

class Cidade {
  Estado estado;
  String logradouro;
  String bairro;
  String cep;
  String nome;

  Cidade({
    required this.estado,
    required this.logradouro,
    required this.bairro,
    required this.cep,
    required this.nome,
  });
}
