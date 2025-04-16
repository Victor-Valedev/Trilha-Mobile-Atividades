//Escreva uma função que receberá uma string composta de letras minúsculas e mostre seu resultado com a primeira e a última letra maiúsculas.

import 'package:flutter/material.dart';

class Atividade12 extends StatefulWidget {
  @override
  State<Atividade12> createState() => _Atividade12State();
}

class _Atividade12State extends State<Atividade12> {
  String palavra = 'desenvolvedor';
  String _resultado = '';

  _stringModificada() {
    //print(palavraModificada);
    String palavraModificada =
        palavra[0].toUpperCase() +
        palavra.substring(1, palavra.length - 1) +
        palavra[palavra.length - 1].toUpperCase();

    setState(() {
      _resultado = palavraModificada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Atividade 11 - mostrar string modificado com maiúscula e minúscula',
        ),
        ElevatedButton(onPressed: _stringModificada, child: Text('Modificar')),
        SizedBox(height: 6),
        Text(_resultado),
      ],
    );
  }
}
