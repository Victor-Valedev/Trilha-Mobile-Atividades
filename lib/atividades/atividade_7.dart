//Escreva uma função que recebe um número inteiro positivo, e exiba mostre soma de todos os números menores que ele.

import 'package:flutter/material.dart';

class Atividade7 extends StatefulWidget {
  @override
  State<Atividade7> createState() => _Atividade7State();
}

class _Atividade7State extends State<Atividade7> {
  final valorInserido = TextEditingController();
  String _resultado = '';

  _somarValoresMenores() {
    final numeroDigitado = int.tryParse(valorInserido.text);

    if (numeroDigitado == null || numeroDigitado <= 0) {
      setState(() {
        _resultado = 'Insira um valor positivo.';
      });
      return;
    }

    String mostrarSoma = '';
    int soma = 0;
    for (int i = 1; i < numeroDigitado; i++) {
      soma += i;
      mostrarSoma += (i == numeroDigitado - 1) ? '$i' : '$i + ';
    }

    setState(() {
      _resultado = '$mostrarSoma = ${soma.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Atividade 7 - soma de números menores que o inserido.'),
        TextField(
          decoration: InputDecoration(
            labelText: 'Digite um valor para somar os menores: ',
          ),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: valorInserido,
        ),
        SizedBox(height: 6),
        ElevatedButton(onPressed: _somarValoresMenores, child: Text('Somar')),
        SizedBox(height: 6),
        Text(_resultado),
      ],
    );
  }
}
