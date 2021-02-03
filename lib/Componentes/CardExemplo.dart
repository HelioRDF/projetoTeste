import 'package:flutter/material.dart';
import 'package:projetoTeste/View/DatePick.dart';
import 'package:projetoTeste/View/Flexible_Expanded.dart';
import 'package:projetoTeste/View/FontFamily.dart';
import 'package:projetoTeste/View/Input.dart';
import 'package:projetoTeste/View/ListViewBuild.dart';
import 'package:projetoTeste/View/DialogView.dart';

import 'EstruturaCard.dart';

class CardExemplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EstruturaCard("Input & List", Input()),
          EstruturaCard("ListView.Build com ListTile", ListViewBuild()),
          EstruturaCard("Dialog", DialogView()),
          EstruturaCard("FontFamily", FontFamily()),
          EstruturaCard("Flexible e Expanded", Flexible_Expanded()),
          EstruturaCard("DatePick", DatePick()),
        ],
      ),
    );
  }
}
