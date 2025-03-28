class Validacoes {
  static validarNome(String nome) {
    if (nome.trim().isEmpty) {
      throw ArgumentError('Nome inválido! Esse campo não pode ser vazio');
    }
  }

  static validarIdade(int idade) {
    if (idade <= 0) {
      throw ArgumentError('Idade inválida! Esse campo não pode ser vazio');
    }
  }

  static validarCidade(String cidade) {
    if (cidade.trim().isEmpty) {
      throw ArgumentError('Cidade inválida! Esse campo não pode ser vazio!');
    }
  }

  static validarEstado(String estado) {
    var estadoCaixaAlta = estado.toUpperCase();
    if (estado.trim().isEmpty) {
      throw ArgumentError('Estado inválido! Esse campo não pode ser nulo');
    } else if (estado.length != 2) {
      throw ArgumentError(
        'Estado inválido! Número de caracteres acima/abaixo do permitido',
      );
    } else if (estado != estadoCaixaAlta) {
      throw ArgumentError('Estado inválido! Letras devem estar em caixa alta!');
    }
  }
}
