import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/services/CategoriaService.dart';
import 'package:flutter/material.dart';

class TelaCadastroCategoria extends StatefulWidget {
  const TelaCadastroCategoria({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TelaCadastroCategoriaState();
}

class _TelaCadastroCategoriaState extends State<TelaCadastroCategoria> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _descricaoController = TextEditingController();

  final CategoriaService _categoriaService = CategoriaService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Categoria'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.red.shade900],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            controller: _nomeController,
                            decoration: InputDecoration(
                              labelText: "Nome da categoria",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira o nome da categoria';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          TextFormField(
                            controller: _descricaoController,
                            decoration: InputDecoration(
                              labelText: 'Descrição',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 3,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor, insira a descrição';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: _salvarCategoria,
                            child: Text('Salvar Categoria'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              textStyle: TextStyle(fontSize: 16),
                              fixedSize: const Size(150, 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _salvarCategoria() {
    if (_formKey.currentState!.validate()) {
      final novaCategoria = Categoria(
        nome: _nomeController.text,
        descricao: _descricaoController.text,
      );

      _categoriaService.adicionarCategoria(novaCategoria);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Categoria cadastrada com sucesso!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      _nomeController.clear();
      _descricaoController.clear();
    }
  }

  // O método abaixo
  // é chamado quando o widget é removido da árvore de widgets
  // e é usado para liberar os recursos utilizados pelos controladores
  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();
    super.dispose();
  }
}
