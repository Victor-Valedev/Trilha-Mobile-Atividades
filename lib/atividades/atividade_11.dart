//Escreva uma função que recebe uma string e mostre na tela o seu inverso. Não vale usar a função reverse

import 'package:flutter/material.dart';

class Atividade11 extends StatefulWidget {
  @override
  State<Atividade11> createState() => _Atividade11State();
}

class _Atividade11State extends State<Atividade11> {
  String palavra = 'Colmeia';
  String _resultado = '';

  _stringReversa() {
    List<String> transformaCaractere = palavra.split('');

    //print(transformaCaractere);

    String resultadoFinal = '';
    for (var i = transformaCaractere.length - 1; i >= 0; i--) {
      resultadoFinal += transformaCaractere[i];
    }

    setState(() {
      _resultado = 'O reverso da palavra $palavra é $resultadoFinal';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 11 - mostrar string reversa'),
        ElevatedButton(onPressed: _stringReversa, child: Text('Reverter')),
        SizedBox(height: 6),
        Text(_resultado),
      ],
    );
  }
}
