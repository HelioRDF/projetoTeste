import 'package:flutter/material.dart';
import 'package:projetoTeste/Componentes/FormInput.dart';
import 'package:projetoTeste/Componentes/ListaUsu%C3%A1rio.dart';
import 'package:projetoTeste/Model/Pessoa.dart';

class DialogView extends StatefulWidget {
  @override
  _DialogViewState createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  List<Pessoa> pessoas = [Pessoa(nome: "Primeira", idade: 31)];

  _salvar(nomeP, idadeP) {
    Pessoa pessoa = Pessoa(nome: nomeP, idade: idadeP);
    print("Chamou o salvar");
    setState(() {
      pessoas.add(pessoa);
    });
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Column(
        children: [
          ListaUsuario(pessoas),
          FlatButton(
            child: Text("Cadastrar"),
            onPressed: () => {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return FormInput(_salvar);
                  })
            },
          ),
        ],
      ),
    );
  }
}
