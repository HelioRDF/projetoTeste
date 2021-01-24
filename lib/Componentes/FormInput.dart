import 'package:flutter/material.dart';

class FormInput extends StatefulWidget {
  final Function(String, int) _salvar;

  FormInput(this._salvar);

  @override
  _FormInputState createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            top: 8,
            left: 8,
            right: 8,
            bottom: 40 + MediaQuery.of(context).viewInsets.bottom + 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
                child: TextField(
              controller: nome,
              decoration: InputDecoration(
                  labelText: "Nome", contentPadding: EdgeInsets.all(10)),
              keyboardType: TextInputType.text,
            )),
            Card(
                child: TextField(
                    controller: idade,
                    decoration: InputDecoration(
                        labelText: "Idade", contentPadding: EdgeInsets.all(10)),
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
                        widget._salvar(nome.text, int.parse(idade.text));
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
