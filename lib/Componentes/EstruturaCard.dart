import 'package:flutter/material.dart';
import 'package:projetoTeste/View/Flexible_Expanded.dart';

class EstruturaCard extends StatelessWidget {

   String texto;
   var local;
EstruturaCard(this.texto, this.local);

  @override
  Widget build(BuildContext context) {
    return        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: FlatButton(
                minWidth: double.infinity,
                child: Text(texto),
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>local))
                },
              ),
            ),
          );
  }
}