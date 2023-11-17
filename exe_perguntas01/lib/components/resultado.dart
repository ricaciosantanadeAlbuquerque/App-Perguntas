import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int valor;
  final void Function() onReset;
  const Resultado({super.key, required this.valor, required this.onReset});

  String get textoResposta {
    if (valor < 8) {
      return 'Parabéns';
    } else if (valor < 12) {
      return 'Muito Bom!';
    } else if (valor < 16) {
      return 'Impressionante !';
    } else {
      return 'Nível Mestre !';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: Text(
            textoResposta,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton.icon(
          onPressed: onReset,
          icon: const Icon(Icons.restore),
          label: const Text('Reste'),
        ),
      ]),
    );
  }
}
