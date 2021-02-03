import 'package:flutter/material.dart';

class Flexible_Expanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flexible&Expanded"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1, 
            child: Container(
              height: 100,
              color: Colors.red,
              child: Text("Item 1 - pretty big!"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              color: Colors.orange,
              child: Text("Item 2"),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.blue,
              child: Text("Item 3"),
            ),
          ),
        ],
      ),
    );
  }
}
