import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:projeto_perguntas/resposta.dart';

class Questionario extends StatelessWidget {
  final void Function(int) onResponder;
  final List<Map<String, Object>> questions;

  const Questionario({
    super.key,
    required this.questions,
    required this.onResponder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...questions.mapIndexed(
          (index, pergunta) => Column(
            children: [
              Text(pergunta['question'] as String),
              Resposta(
                texto: 'Selecionar',
                onPressend: () => onResponder(index),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
