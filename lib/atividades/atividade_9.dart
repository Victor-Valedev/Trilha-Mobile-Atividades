//Escreva uma função que recebe um lista de 5 números inteiros em forma de string separada por “-”, converta para array e mostre a soma de todos os números que são menores que 30.

import 'package:flutter/material.dart';

class Atividade9 extends StatefulWidget {
  @override
  State<Atividade9> createState() => _Atividade9tState();
}

class _Atividade9tState extends State<Atividade9> {
  String numeros = '10-30-41-20-15';
  String _resultado = '';

  _calcularSomaMenoresQue30() {
    List<String> lista = numeros.split('-');
    List<int> convertidos = lista.map((e) => int.parse(e)).toList();
    List<int> validos = [];

    int somaParcial = 0;
    for (var numero in convertidos) {
      if (numero < 30) {
        somaParcial += numero;
        validos.add(numero);
      }
    }

    String expressao = validos.map((e) => '$e').toList().join(' + ');

    setState(() {
      _resultado = '$expressao = $somaParcial';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 9 - soma de números menores que 30'),
        ElevatedButton(
          onPressed: _calcularSomaMenoresQue30,
          child: Text('Calcular'),
        ),
        SizedBox(height: 6),
        Text(_resultado),
      ],
    );
  }
}
