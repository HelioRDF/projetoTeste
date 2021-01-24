import 'package:flutter/material.dart';
import 'package:projetoTeste/Componentes/CardExemplo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto Teste"),
      ),
      body: SingleChildScrollView(child: CardExemplo()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.games),
      ),
    );
  }
}
