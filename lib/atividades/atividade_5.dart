//Escreva uma função que leia um número inteiro de 1 a 7 e informe o dia da semana correspondente, sendo domingo o dia de número 1. Se o número não corresponder a um dia da semana, mostre uma mensagem de erro.

import 'package:flutter/material.dart';

class Atividade5 extends StatefulWidget {
  @override
  State<Atividade5> createState() => _Atividade5State();
}

class _Atividade5State extends State<Atividade5> {
  final _valorInserido = TextEditingController();

  String _resultado = '';

  _verficarDiasDaSemana() {
    final valorInseridoUsuario = int.tryParse(_valorInserido.text);

    switch (valorInseridoUsuario) {
      case 1:
        setState(() {
          _resultado = 'Domingo';
        });
        break;
      case 2:
        setState(() {
          _resultado = 'Segunda-feira';
        });
        break;
      case 3:
        setState(() {
          _resultado = 'Terça-feira';
        });
        break;
      case 4:
        setState(() {
          _resultado = 'Quarta-feira';
        });
        break;
      case 5:
        setState(() {
          _resultado = 'Quinta-feira';
        });
        break;
      case 6:
        setState(() {
          _resultado = 'Sexta-feira';
        });
        break;
      case 7:
        setState(() {
          _resultado = 'Sábado';
        });
        break;
      default:
        setState(() {
          _resultado = 'Dia inválido! Insira um valor de 1 a 7.';
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Atividade 5 - dias da semana.'),
        TextField(
          decoration: InputDecoration(labelText: 'Insira um número de 1 a 7:'),
          controller: _valorInserido,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        SizedBox(height: 6),
        ElevatedButton(
          onPressed: _verficarDiasDaSemana, 
          child: Text('Verificar')),
        SizedBox(height: 6),
        Text(_resultado)
      ],
    );
  }
}
