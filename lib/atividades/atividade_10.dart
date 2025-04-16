//Escreva uma função  que recebe um lista de 5 números inteiros  em forma de string separada por “/”, converta para array mostre quantidades de valores maior que 50.

import 'package:flutter/material.dart';

class Atividade10 extends StatefulWidget {
  @override
  State<Atividade10> createState() => _Atividade10State();
}

class _Atividade10State extends State<Atividade10> {
  String numeros = '30/55/61/32/10';
  String _resultado = '';
  int validos = 0;

  _quantidadeValoresMaiorQue50() {
    List<String> lista = numeros.split('/');
    List<int> convertidos = lista.map((e) => int.parse(e)).toList();

    for (var numero in convertidos) {
      if (numero > 50) {
        validos++;
      }
    }

    setState(() {
      _resultado = 'A quantidade de valores maiores que 50 em $convertidos  é  $validos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 10 - quantidade de números maiores que 50'),
        ElevatedButton(
          onPressed: _quantidadeValoresMaiorQue50,
          child: Text('Calcular'),
        ),
        SizedBox(height: 6),
        Text(_resultado.toString()),
      ],
    );
  }
}
