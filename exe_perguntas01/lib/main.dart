import 'package:flutter/material.dart';
import 'components/Questionario.dart';
import 'components/resultado.dart';

void main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  State<PerguntaApp> createState() => PerguntaAppState();
}

class PerguntaAppState extends State<PerguntaApp> {
  int _index = 0;
  int _valorTotla = 0;

  final List<Map<String, Object>> listPerguntas = const [
    {
      'texto': 'Qual é a sua cor favorita ?',
      'resposta': [
        {'texto': 'Preto', 'nota': 10},
        {'texto': 'Vermelho', 'nota': 5},
        {'texto': 'Verde', 'nota': 3},
        {'texto': 'Branco', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é o seu animal favorito ?',
      'resposta': [
        {'texto': 'Coelho', 'nota': 10},
        {'texto': 'Cobra', 'nota': 5},
        {'texto': 'Elefante', 'nota': 3},
        {'texto': 'Leão', 'nota': 1}
      ]
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'resposta': [
        {'texto': 'Leao', 'nota': 10},
        {'texto': 'Maria', 'nota': 5},
        {'texto': 'Preto', 'nota': 3},
        {'texto': 'João', 'nota': 1}
      ]
    }
  ];

  void responder(int valor) {
    setState(() {
      _index++;
      _valorTotla += valor;
    });
  }

  bool get temPergunta {
    return _index < listPerguntas.length;
  }

  void resetPerguntas() {
    setState(() {
      _index = 0;
      _valorTotla = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Perguntas App'),
            ),
          ),
          body: temPergunta ? Questionario(index: _index, listPerguntas: listPerguntas, onChanged: responder) : Resultado(valor: _valorTotla, onReset: resetPerguntas)),
    );
  }
}
