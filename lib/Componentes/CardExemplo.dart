import 'package:flutter/material.dart';
import 'package:projetoTeste/View/Input.dart';
import 'package:projetoTeste/View/ListViewBuild.dart';
import 'package:projetoTeste/View/DialogView.dart';

class CardExemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 15, bottom: 8, left: 8, right: 8),
            child: Card(
              child: FlatButton(
                minWidth: double.infinity,
                child: Text(
                  "Input & List",
                ),
                onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Input()))
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: FlatButton(
                minWidth: double.infinity,
                child: Text("ListView.Build"),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListViewBuild()))
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: FlatButton(
                minWidth: double.infinity,
                child: Text("Dialog"),
                onPressed: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DialogView()))
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
