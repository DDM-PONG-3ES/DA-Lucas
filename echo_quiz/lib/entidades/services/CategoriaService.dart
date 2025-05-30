import 'package:echo_quiz/entidades/Categoria.dart';

class CategoriaService {
  static final CategoriaService _instance = CategoriaService._internal();

  factory CategoriaService() {
    return _instance;
  }

  CategoriaService._internal();

  final List<Categoria> _categorias = [
    Categoria(nome: 'Pop', descricao: 'Música pop contemporânea e comercial'),
    Categoria(nome: 'Rock', descricao: 'Rock clássico e progressivo'),
    Categoria(nome: 'Jazz', descricao: 'Jazz clássico e contemporâneo'),
  ];

  List<Categoria> get categorias => _categorias;

  void adicionarCategoria(Categoria categoria) {
    _categorias.add(categoria);
  }

  Categoria? buscarPorNome(String nome) {
    try {
      return _categorias.firstWhere((categoria) => categoria.nome == nome);
    } catch (e) {
      return null;
    }
  }
}
