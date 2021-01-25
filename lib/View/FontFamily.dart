import 'package:flutter/material.dart';

class FontFamily extends StatefulWidget {
  @override
  _FontFamilyState createState() => _FontFamilyState();
}

class _FontFamilyState extends State<FontFamily> {
  List<String> tipoFonte = [
    'DancingScript',
    'Quicksand',
    'OpenSans',
    'SansitaSwashed'
  ];
  int _num = 0;
  mudarFonte(numero) {
    setState(() {
      _num = numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font Family"),
        textTheme: ThemeData.light().textTheme.copyWith(
            headline6: TextStyle(fontFamily: tipoFonte[_num], fontSize: 26)),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: FlatButton(
                  minWidth: double.infinity,
                  child: Text(
                    "DancingScript",
                    style: TextStyle(fontFamily: tipoFonte[0]),
                  ),
                  onPressed: () => {mudarFonte(0)},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: FlatButton(
                  minWidth: double.infinity,
                  child: Text(
                    "Quicksand",
                    style: TextStyle(fontFamily: tipoFonte[1]),
                  ),
                  onPressed: () => {mudarFonte(1)},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: FlatButton(
                  minWidth: double.infinity,
                  child: Text(
                    "OpenSans",
                    style: TextStyle(fontFamily: tipoFonte[2]),
                  ),
                  onPressed: () => {mudarFonte(2)},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: FlatButton(
                  minWidth: double.infinity,
                  child: Text(
                    "SansitaSwashed",
                    style: TextStyle(fontFamily: tipoFonte[3]),
                  ),
                  onPressed: () => {mudarFonte(3)},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
