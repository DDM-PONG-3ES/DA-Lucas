import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/Pergunta.dart';
import 'package:echo_quiz/entidades/Pontuacao.dart';
import 'package:echo_quiz/entidades/Usuario.dart';

class UsuarioService {
  static final UsuarioService _instance = UsuarioService._internal();

  factory UsuarioService() {
    return _instance;
  }

  UsuarioService._internal();

  final List<Usuario> _usuarios = [
    Usuario(nome: 'Kanye West', pontuacao: Pontuacao(valor: 88)),
  ];

  List<Usuario> get usuarios => _usuarios;

  void adicionarUsuario(Usuario usuario) {
    _usuarios.add(usuario);
  }
}
