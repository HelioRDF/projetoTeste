import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePick extends StatefulWidget {
  @override
  _DatePickState createState() => _DatePickState();
}

class _DatePickState extends State<DatePick> {
  DateTime _dataSelecionada = DateTime.now();
  DateFormat _dateFormat = DateFormat("dd-MMMM-yyyy");

  _abrirCalendario() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(DateTime.now().year + 1))
        .then((data) => {
              if (data != null)
                setState(() {
                  _dataSelecionada = data;
                })
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePick"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                RaisedButton(
                    color: Colors.purple[700],
                    textColor: Colors.white,
                    child: Text("Selecionar Data"),
                    onPressed: () => _abrirCalendario()),
                SizedBox(
                  height: 20,
                ),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Data: " + _dateFormat.format(_dataSelecionada)),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
