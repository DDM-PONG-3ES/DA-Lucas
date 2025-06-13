// Arquivo responsável por inicializar o banco de dados
class DbInit {
  static String createTableUsuario = '''
    CREATE TABLE usuario (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL,
      pontuacao INTEGER DEFAULT 0
    );
  ''';

  static String createTableCategoria = '''
    CREATE TABLE categoria (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL,
      descricao TEXT NOT NULL
    );
  ''';

  static String createTablePergunta = '''
    CREATE TABLE pergunta (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      dica TEXT NOT NULL,
      resposta TEXT NOT NULL,
      categoria_id INTEGER NOT NULL,
      FOREIGN KEY (categoria_id) REFERENCES categoria(id)
    );
  ''';

  static String createTableArtista = '''
    CREATE TABLE artista (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL
    );
  ''';

  static String createTableMusica = '''
    CREATE TABLE musica (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      titulo TEXT NOT NULL,
      artista_id INTEGER NOT NULL,
      categoria_id INTEGER NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista(id),
      FOREIGN KEY (categoria_id) REFERENCES categoria(id)
    );
  ''';

  static String createTableHistorico = '''
    CREATE TABLE historico (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      usuario_id INTEGER NOT NULL,
      pergunta_id INTEGER NOT NULL,
      acertou INTEGER NOT NULL,
      FOREIGN KEY (usuario_id) REFERENCES usuario(id),
      FOREIGN KEY (pergunta_id) REFERENCES pergunta(id)
    );
  ''';

  static List<String> get scripts => [
    createTableUsuario,
    createTableCategoria,
    createTablePergunta,
    createTableArtista,
    createTableMusica,
    createTableHistorico,
  ];
}