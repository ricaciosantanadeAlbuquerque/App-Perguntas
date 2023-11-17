import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final String texto;
  final void Function() onReset;
  const Resultado({super.key,required this.texto, required this.onReset});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.all(20),
        child: Text(texto),
        ),
        ElevatedButton.icon(onPressed: onReset, icon: const Icon(Icons.restore), label: Text(texto),),
    ]);
  }
}
