import 'package:flutter/material.dart';

void main() {
  runApp(Calculadora());
}

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Calculadora'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 124.6037,horizontal: 100),
              alignment: Alignment.bottomRight,
              color: Colors.white,
              child: Text(
                'visor',
                style: TextStyle(fontSize: 48, color: Color.fromARGB(255, 18, 69, 145)),
              ),
            ),
            SizedBox(height: 20),
            BotaoCalculadora('C', 'DEL', '%', '/'),
            BotaoCalculadora('7', '8', '9', '*'),
            BotaoCalculadora('4', '5', '6', '+'),
            BotaoCalculadora('1', '2', '3', '-'),
            BotaoCalculadora('#', '0', '.', '='),
          ],
        ),
      ),
    );
  }
}

class BotaoCalculadora extends StatelessWidget {
  final String texto1, texto2, texto3, texto4;

  BotaoCalculadora(this.texto1, this.texto2, this.texto3, this.texto4);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Botao(texto1)),
        Expanded(child: Botao(texto2)),
        Expanded(child: Botao(texto3)),
        Expanded(child: Botao(texto4)),
      ],
    );
  }
}

class Botao extends StatelessWidget {
  final String texto;

  Botao(this.texto);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        texto,
        style: TextStyle(fontSize: 40),
      ),
      onPressed: () {},
    );
  }
}