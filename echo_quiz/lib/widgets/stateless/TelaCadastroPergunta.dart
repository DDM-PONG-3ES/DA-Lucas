import 'package:echo_quiz/entidades/Categoria.dart';
import 'package:echo_quiz/entidades/Pergunta.dart';
import 'package:echo_quiz/entidades/services/PerguntaService.dart';
import 'package:flutter/material.dart';

class TelaCadastroPergunta extends StatefulWidget {
  const TelaCadastroPergunta({Key? key}) : super(key: key);

  @override
  State<TelaCadastroPergunta> createState() => _TelaCadastroPerguntaState();
}

class _TelaCadastroPerguntaState extends State<TelaCadastroPergunta> {
  final _formKey = GlobalKey<FormState>();
  final _dicaController = TextEditingController();
  final _respostaController = TextEditingController();
  String? _categoriaSelecionada;

  final PerguntaService _perguntaService = PerguntaService();

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
                              controller: _dicaController,
                              decoration: InputDecoration(
                                labelText: 'Dica',
                                hintText: 'Digite a dica para a pergunta',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.lightbulb),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira uma dica';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              controller: _respostaController,
                              decoration: InputDecoration(
                                labelText: 'Resposta',
                                hintText: 'Digite a resposta para a pergunta',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.question_answer),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, insira uma resposta';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            DropdownButtonFormField<String>(
                              decoration: const InputDecoration(
                                labelText: 'Categoria',
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(Icons.library_music),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: 'Jazz',
                                  child: Text('JAZZ'),
                                ),
                                DropdownMenuItem(
                                  value: 'Rock',
                                  child: Text('ROCK'),
                                ),
                                DropdownMenuItem(
                                  value: 'Pop',
                                  child: Text('POP'),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _categoriaSelecionada = value;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Por favor, selecione uma categoria';
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
      final novaPergunta = Pergunta(
        dica: _dicaController.text,
        resposta: _respostaController.text,
        categoria: Categoria(nome: _categoriaSelecionada!),
      );

      _perguntaService.adicionarPergunta(novaPergunta);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Pergunta cadastrada com sucesso!'),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      _dicaController.clear();
      _respostaController.clear();
      setState(() {
        _categoriaSelecionada = null;
      });
    }
  }

  @override
  void dispose() {
    _dicaController.dispose();
    _respostaController.dispose();
    super.dispose();
  }
}
