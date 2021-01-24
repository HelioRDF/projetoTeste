import 'package:flutter/material.dart';
import 'package:projetoTeste/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new Screen(),
  ));
}

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => new _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new Home(),
      title: new Text(
        'Bem vindo ao Projeto Teste Flutter',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.asset('imagens/investimento.png'),
      backgroundColor: Colors.white,
      loaderColor: Colors.red,
    );
  }
}
