//Escreva uma função que recebe um número inteiro positivo, e mostre na tela todos os números até chegar ao seu valor.

import 'package:flutter/material.dart';

class Atividade6 extends StatefulWidget {
  @override
  State<Atividade6> createState() => _Atividade6State();
}

class _Atividade6State extends State<Atividade6> {
  final numeroDigitado = TextEditingController();
  String _resultado = '';

  _lerNumeroPositivo() {
    final numeroInserido = int.tryParse(numeroDigitado.text);
    if (numeroInserido == null || numeroInserido <= 0) {
      setState(() {
        _resultado = 'Insira um valor positivo.';
      });
      return;
    }

    String contagem = '';
    for (int i = 1; i <= numeroInserido; i++) {
      contagem += '$i ';
    }

    setState(() {
      _resultado = contagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Atividade 6 - Mostrando todos os números até chegar ao inserido.'),
        TextField(
          decoration: InputDecoration(labelText: 'Digite um número positivo:'),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: numeroDigitado,
        ),
        SizedBox(height: 6),
        ElevatedButton(
          onPressed: _lerNumeroPositivo, 
          child: Text('Percorrer número')
        ),
        SizedBox(height: 6),
        Text(_resultado)
      ],
    );
  }
}
