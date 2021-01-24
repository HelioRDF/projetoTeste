import 'package:flutter/material.dart';
import 'package:projetoTeste/Model/Pessoa.dart';

class ListaUsuario extends StatefulWidget {
  final List<Pessoa> pessoas;
  ListaUsuario(this.pessoas);

  @override
  _ListaUsuarioState createState() => _ListaUsuarioState();
}

class _ListaUsuarioState extends State<ListaUsuario> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 300,
        child: ListView.builder(
            itemCount: widget.pessoas.length,
            itemBuilder: (ctx, num) {
              return Row(
                children: [
                  Text("Nome: ${widget.pessoas[num].nome}"),
                ],
              );
            }),
      ),
    );
  }
}
