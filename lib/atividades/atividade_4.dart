//Escreva uma função para ler o salário mensal atual de um funcionário e o percentual de reajuste. Mostre uma mensagem indicando o valor do novo salário.

import 'package:flutter/material.dart';

class Atividade4 extends StatefulWidget {
  @override
  State<Atividade4> createState() => _Atividade4State();
}

class _Atividade4State extends State<Atividade4> {
  final salarioMensal = TextEditingController();
  final percentualReajuste = TextEditingController();
  bool _mostrarResultado = false;
  String _resultado = '';

  _lerSalarioMensalComReajuste() {
    final salario = double.tryParse(salarioMensal.text);
    final reajuste = double.tryParse(percentualReajuste.text);

    if (salario == null || reajuste == null) {
      setState(() {
        _mostrarResultado = false;
        _resultado = 'Insira valores válidos';
      });
      return;
    }

    final novoSalario = salario + (salario * reajuste / 100);

    setState(() {
      _mostrarResultado = true;
      _resultado = 'R\$ ${novoSalario.toStringAsFixed(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 4'),
        TextField(
          decoration: InputDecoration(labelText: 'Qual o seu salário?'),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: salarioMensal,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'Qual a porcentagem do reajuste?',
            suffixText: '%',
          ),
          keyboardType: TextInputType.numberWithOptions(decimal: true),
          controller: percentualReajuste,
        ),
        ElevatedButton(
          onPressed: _lerSalarioMensalComReajuste,
          child: Text('Calcular'),
        ),
        SizedBox(height: 8),
        if(_mostrarResultado)
          Text('O valor com o reajuste é: $_resultado')
        else if(_resultado.isNotEmpty)
          Text(_resultado)
      ],
    );
  }
}
