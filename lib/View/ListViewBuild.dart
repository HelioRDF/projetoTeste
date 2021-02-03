import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetoTeste/Model/Pessoa.dart';

class ListViewBuild extends StatefulWidget {
  @override
  _ListViewBuildState createState() => _ListViewBuildState();
}

class _ListViewBuildState extends State<ListViewBuild> {
  List<Pessoa> _listaPessoas = [
    Pessoa(nome: "Helio", idade: 32),
    Pessoa(nome: "Aline", idade: 27)
  ];
  int num = 1;

  _criarLista() {
    while (num < 60) {
      num++;
      _listaPessoas.add(
        Pessoa(nome: "Helio", idade: 32),
      );
    }
  }

  TextEditingController _nome = TextEditingController();
  TextEditingController _idade = TextEditingController();

  _salvar(nome, idade) {
    setState(() {
      _listaPessoas.add(Pessoa(nome: nome.text, idade: int.parse(idade.text)));
    });
  }

  @override
  void initState() {
    super.initState();
    _criarLista();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Input & List"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                  child: TextField(
                controller: _nome,
                decoration: InputDecoration(
                    labelText: "Nome", contentPadding: EdgeInsets.all(10)),
                keyboardType: TextInputType.text,
              )),
              Card(
                  child: TextField(
                      controller: _idade,
                      decoration: InputDecoration(
                          labelText: "Idade",
                          contentPadding: EdgeInsets.all(10)),
                      keyboardType: TextInputType.number)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                      shadowColor: Theme.of(context).accentColor,
                      color: Theme.of(context).accentColor,
                      margin: EdgeInsets.only(top: 10, left: 5),
                      elevation: 15,
                      child: FlatButton(
                        child: Text("Salvar"),
                        textColor: Colors.white,
                        onPressed: () {
                          _salvar(_nome, _idade);
                        },
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                    height: 350,
                    child: ListView.builder(
                        itemCount: _listaPessoas.length,
                        itemBuilder: (context, indice) {
                          Pessoa pessoa = _listaPessoas[indice];
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: FittedBox(child: Text("User:")),
                                  )),
                              title: Text(pessoa.nome),
                              subtitle: Text("Idade:"+pessoa.idade.toString()),
                            ),
                          );
                        })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
