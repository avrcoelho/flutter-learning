import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import './question.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  dynamic _perguntaSelecionada;

  void _responder(int index) {
    setState(() {
      _perguntaSelecionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pergunta App'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          padding: const EdgeInsets.all(24),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (_perguntaSelecionada != null)
                Question(perguntas[_perguntaSelecionada]),
              ...perguntas.mapIndexed(
                (index, pergunta) => Column(
                  children: [
                    Text(pergunta),
                    ElevatedButton(
                      onPressed: () => _responder(index),
                      child: Text('Selecionar'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
