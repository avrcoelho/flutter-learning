import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function()? onPressend;

  const Resposta({super.key, required this.texto, this.onPressend});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressend,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(texto),
      ),
    );
  }
}
