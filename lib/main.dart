import 'package:flutter/material.dart';

main() => runApp(PerguntaApp()); //run APP widget

class PerguntaAppState extends State<PerguntaApp> {
  //Class de estate da classe perguntaApp
  var perguntaSelecionada = 0;
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita? ',
      'Qual é o seu animal favorito? ',
      'Qual é o seu instrutor favorito? ',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('APP de Perguntas e respostas'),
          ),
          body: Column(
            children: [
              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                child: Text('Reposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 2'),
                onPressed: responder,
              ),
              ElevatedButton(
                child: Text('Resposta 3'),
                onPressed: responder,
              ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  //PerguntaApp({super.key});

  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
