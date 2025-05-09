import 'package:echo_quiz/config/Rotas.dart';
import 'package:flutter/material.dart';

class TelaCadastroPergunta extends StatelessWidget {
  const TelaCadastroPergunta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? categoriaSelecionada;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pergunta'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 400),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Dica',
                        hintText: 'Digite a dica para a pergunta',
                        border: OutlineInputBorder(),
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
                      decoration: InputDecoration(
                        labelText: 'Resposta',
                        hintText: 'Digite a resposta para a pergunta',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, insira uma reposta';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(labelText: 'Categoria'),
                      items: const [
                        DropdownMenuItem(value: '1', child: Text('JAZZ')),
                        DropdownMenuItem(value: '2', child: Text('ROCK')),
                        DropdownMenuItem(value: '3', child: Text('POP')),
                      ],
                      onChanged: (value) {
                        categoriaSelecionada = value;
                        print(value);
                      },
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Rotas.home);
                      },
                      child: Text('Salvar'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 50),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
