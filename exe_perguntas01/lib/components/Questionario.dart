import 'package:flutter/material.dart';

import 'Questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final int index;
  final List<Map<String, Object>> listPerguntas;
  final void Function(int) onChanged;

  const Questionario({super.key, required this.index, required this.listPerguntas, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> lista = listPerguntas[index]['resposta'] as List<Map<String, Object>>;
    return Column(
      children: [
        Questao(texto: listPerguntas[index]['texto'] as String),
        ...lista.map((map) {
          return Resposta(texto: map['texto'] as String, onSelected: () => onChanged(map['nota'] as int));
        }).toList()
      ],
    );
  }
}
