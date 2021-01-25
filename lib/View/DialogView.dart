import 'package:flutter/material.dart';
import 'package:projetoTeste/Componentes/FormInput.dart';
import 'package:projetoTeste/Model/Pessoa.dart';

class DialogView extends StatefulWidget {
  @override
  _DialogViewState createState() => _DialogViewState();
}

class _DialogViewState extends State<DialogView> {
  List<Pessoa> pessoas = [];

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
      body: pessoas.isEmpty
          ? Container(
              height: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Nenhuma Informação cadastrada"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(
                      "assets/image/waiting.png",
                      fit: BoxFit.cover,
                      width: 50,
                    ),
                  )
                ],
              ),
            )
          : Text(""),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (_) {
                return FormInput(_salvar);
              });
        },
        child: Icon(Icons.add_box),
      ),
    );
  }
}
