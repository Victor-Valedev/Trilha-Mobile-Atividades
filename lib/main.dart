import 'package:flutter/material.dart';
import 'package:trilhamobile/atividades/atividade_1.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AtividadesFuncoes())
);

class AtividadesFuncoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ativdades flutter e dart')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget> [
              Atividade1(),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
