import 'package:flutter/material.dart';

class Atividade2 extends StatefulWidget {
  @override
  State<Atividade2> createState() => _Atividade2State();
}

class _Atividade2State extends State<Atividade2> {
  final valor1 = TextEditingController();
  final valor2 = TextEditingController();
  String _resultado = '';

  _lerNumeros() {
    final numero1 = int.tryParse(valor1.text);
    final numero2 = int.tryParse(valor2.text);

    if (numero1 != numero2) {
      setState(() {
        _resultado =
            numero1! > numero2!
                ? 'Valor A é maior que o Valor B!'
                : 'Valor B é maior que o Valor A!';
      });
    } else if (numero1 == null || numero2 == null) {
      setState(() {
        _resultado = 'Digite valores válidos nos campos!';
      });
    } else {
      setState(() {
        _resultado =
            'Digite valores diferentes um do outro para saber qual o maior!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Atividade 2 - números maiores que os outros'),
        TextField(
          decoration: InputDecoration(labelText: 'Digite o valor A'),
          controller: valor1,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Digite o valor B'),
          controller: valor2,
          keyboardType: TextInputType.numberWithOptions(decimal: true),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: _lerNumeros, child: Text('Calcular')),
        Text(_resultado),
      ],
    );
  }
}
