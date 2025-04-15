//Escreva uma função que recebe um número inteiro positivo, e mostre todos os números ímpares até chegar ao seu valor.

import 'package:flutter/material.dart';

class Atividade8 extends StatefulWidget {
  @override
  State<Atividade8> createState() => _Atividade8State();
}

class _Atividade8State extends State<Atividade8> {
  final numeroInserido = TextEditingController();
  String _resultado = '';

  _mostrarNumerosImpares() {
    final numeroDigitado = int.tryParse(numeroInserido.text);

    if (numeroDigitado == null || numeroDigitado <= 0) {
      setState(() {
        _resultado = 'Insira um valor positivo.';
      });
      return;
    }

    String contador = '';
    for (int i = 1; i <= numeroDigitado; i++) {
      if (i % 2 == 1) {
        contador += '$i, ';
      }
    }

    setState(() {
      _resultado = 'Números ímpares até $numeroDigitado: $contador';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Atividade 8 - números ímpares na sequência do valor inserido'),
        TextField(
          decoration: InputDecoration(labelText: 'Digite um número positivo'),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: numeroInserido
        ),
        SizedBox(height: 6),
        ElevatedButton(
          onPressed: _mostrarNumerosImpares, 
          child: Text('Verificar ímpares')
        ),
        SizedBox(height: 6),
        Text(_resultado)
      ],
    );
  }
}
