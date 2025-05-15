import 'package:echo_quiz/entidades/Pontuacao.dart';
import 'package:echo_quiz/entidades/Usuario.dart';
import 'package:echo_quiz/entidades/services/UsuarioService.dart';
import 'package:flutter/material.dart';

class TelaCadastroUsuario extends StatefulWidget {
  const TelaCadastroUsuario({Key? key}) : super(key: key);

  @override
  State<TelaCadastroUsuario> createState() => _TelaCadastroUsuarioState();
}

class _TelaCadastroUsuarioState extends State<TelaCadastroUsuario> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _pontuacaoController = TextEditingController();

  final UsuarioService _usuarioService = UsuarioService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pergunta'),
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
                padding: const EdgeInsets.all(16.0),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 400),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: _nomeController,
                              decoration: InputDecoration(
                                labelText: 'Nome',
                                hintText: 'Digite o seu nome completo',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.lightbulb),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira um nome válido';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: ElevatedButton.icon(
                                    icon: Icon(Icons.cancel),
                                    label: Text('Cancelar'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      minimumSize: const Size(0, 50),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: ElevatedButton.icon(
                                    icon: Icon(Icons.save),
                                    label: Text('Salvar'),
                                    onPressed: _salvarPergunta,
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(0, 50),
                                      backgroundColor: Colors.green[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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

  void _salvarPergunta() {
    if (_formKey.currentState!.validate()) {
      final novoUsuario = Usuario(
        nome: _nomeController.text,
        pontuacao: Pontuacao(valor: 0),
      );

      _usuarioService.adicionarUsuario(novoUsuario);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Usuário cadastrado com sucesso!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      _nomeController.clear();
    }
  }

  @override
  void dispose() {
    _nomeController.dispose();
    super.dispose();
  }
}
