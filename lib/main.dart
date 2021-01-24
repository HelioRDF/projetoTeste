import 'package:flutter/material.dart';
import 'View/splashScreen.dart';

main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.blueGrey, accentColor: Colors.grey[600]),
    debugShowCheckedModeBanner: false,
    home: new Screen(),
  ));
}
