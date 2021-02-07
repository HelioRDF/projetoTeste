import 'dart:async';

import 'package:flutter/material.dart';
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
  var _selecaoSubmenu = 0;
  String _mensagem = "";

  _criarLista() {
    while (num < 10) {
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
      _mensagem = "Pessoa salva com sucesso!";
    });

    Timer timer = new Timer(new Duration(seconds: 5), () {
      debugPrint("Print after 5 seconds");
      setState(() {
        _mensagem = "";
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _criarLista();
  }

  @override
  Widget build(BuildContext context) {
    var _appBar = AppBar(
      title: Text("Exemplo Input & List"),
    );

    // var _bottomNavigationBar =
    var a = 1;
    var alturaAppBar = _appBar.preferredSize.height;
    var alturaStatusBar = MediaQuery.of(context).padding.top;
    var alturaTela =
        MediaQuery.of(context).size.height - alturaAppBar - alturaStatusBar;
    return Scaffold(
      appBar: _appBar,
      body: _selecaoSubmenu == 0
          ? Lista(alturaTela, _listaPessoas)
          : Cadastro(_nome, _idade, alturaTela, _salvar, _mensagem),
      bottomNavigationBar: SizedBox(
        height: alturaTela * 0.12,
        child: BottomNavigationBar(
          currentIndex: _selecaoSubmenu,
          backgroundColor: Colors.grey[100],
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          elevation: 10,
          selectedFontSize: 16,
          unselectedFontSize: 12,
          onTap: (indice) {
            setState(() {
              _selecaoSubmenu = indice;
              print(_selecaoSubmenu);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "Lista",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: "Adicionar"),
          ],
        ),
      ),
    );
  }
}

class Lista extends StatelessWidget {
  var alturaTela;
  var _listaPessoas;
  Lista(this.alturaTela, this._listaPessoas);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              color: Colors.blueGrey[100],
              height: alturaTela * 0.86,
              padding: EdgeInsets.only(top: 5),
              child: ListView.builder(
                  itemCount: _listaPessoas.length,
                  itemBuilder: (context, indice) {
                    Pessoa pessoa = _listaPessoas[indice];
                    int numPessoa = indice+1;

                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: FittedBox(child: Text("User $numPessoa "  )),
                            )),
                        title: Text(pessoa.nome),
                        subtitle: Text("Idade:" + pessoa.idade.toString()),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}

class Cadastro extends StatelessWidget {
  var alturaTela;
  var _nome;
  var _idade;
  var _mensagem;
  Function(TextEditingController, TextEditingController) _salvar;
  Cadastro(
      this._nome, this._idade, this.alturaTela, this._salvar, this._mensagem);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: alturaTela * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
              child: TextField(
            controller: _nome,
            decoration: InputDecoration(
                labelText: "Nome", contentPadding: EdgeInsets.all(5)),
            keyboardType: TextInputType.text,
          )),
          Card(
              child: TextField(
                  controller: _idade,
                  decoration: InputDecoration(
                      labelText: "Idade", contentPadding: EdgeInsets.all(5)),
                  keyboardType: TextInputType.number)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: FlatButton(
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "Salvar",
                    style: TextStyle(fontSize: 12),
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    _salvar(_nome, _idade);
                  },
                ),
              ),
            ],
          ),
          Text(
            _mensagem,
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )
        ],
      ),
    );
  }
}
