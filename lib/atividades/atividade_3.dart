//Escreva uma função que lê o ano de nascimento de uma pessoa. Mostre uma mensagem que diga se ela poderá ou não votar este ano (não é necessário considerar o mês em que a pessoa nasceu).

import 'package:flutter/material.dart';

class Atividade3 extends StatefulWidget {
  @override
  State<Atividade3> createState() => _Atividade3State();
}

class _Atividade3State extends State<Atividade3> {
  final anoDeNascimento = TextEditingController();
  String _resultado = '';
  DateTime? _dataSelecionada;

  _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime(2009),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      helpText: 'Selecione seu ano de nascimento.',
    ).then((dataSelecionada) {
      if (dataSelecionada == null) {
        setState(() {
          _resultado = 'Selecione uma data por favor.';
        });
        return;
      }

      setState(() {
        _dataSelecionada = dataSelecionada;
      });
    });
  }

  _podeVotarOuNao() {
    final anoNascimento = _dataSelecionada?.year;
    setState(() {
      _resultado =
          anoNascimento! <= 2009
              ? 'Parabéns, você já pode votar esse ano!'
              : 'Infelizmente você ainda não pode votar nesse ano.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 3 - Pode votar ou não?'),
        TextButton(
          onPressed: _showDatePicker,
          child: Text('Selecionar data de nascimento'),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: _podeVotarOuNao, child: Text('Posso votar?')),
        SizedBox(height: 20),
        Text(_resultado),
      ],
    );
  }
}
