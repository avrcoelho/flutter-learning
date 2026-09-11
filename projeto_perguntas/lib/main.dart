import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:projeto_perguntas/questionario.dart';

import './question.dart';
import './resposta.dart';

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
    final List<Map<String, Object>> perguntas = [
      {
        'question': 'Qual é a sua cor favorita?',
        'response': ['Azul', 'Vermelho', 'Verde'],
      },
      {
        'question': 'Qual é o seu animal favorito?',
        'response': ['Cachorro', 'Gato', 'Pássaro'],
      },
      {
        'question': 'Qual é a sua comida favorita?',
        'response': ['Pizza', 'Hambúrguer', 'Sushi'],
      },
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
                Question(perguntas[_perguntaSelecionada]['question'] as String),
              Questionario(questions: perguntas, onResponder: _responder),
            ],
          ),
        ),
      ),
    );
  }
}
