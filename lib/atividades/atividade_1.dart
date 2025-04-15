//Escreva uma função que lê um nº inteiro de um campo e mostre uma mensagem indicando se este número é par ou ímpar.

import 'package:flutter/material.dart';

class Atividade1 extends StatefulWidget {
  @override
  State<Atividade1> createState() => _Atividade1State();
}

class _Atividade1State extends State<Atividade1> {
  final _valorDigitado = TextEditingController();
  String _resultado = '';

  void _imparOuPar() {
    final valor = int.tryParse(_valorDigitado.text);
    if (valor == null) {
      setState(() {
        _resultado = 'Digite um valor válido';
      });
    } else {
      setState(() {
        _resultado = valor % 2 == 0 ? 'Par' : 'Impar';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 1 - Par ou Ímpar'),
        TextField(
          controller: _valorDigitado,
          decoration: InputDecoration(labelText: 'Digite um valor'),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        SizedBox(height: 15),
        ElevatedButton(onPressed: _imparOuPar, child: Text('Calcular')),
        SizedBox(height: 15),
        Text('Resultado: O número é ${_resultado}'),
      ],
    );
  }
}
