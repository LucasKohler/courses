import 'package:flutter/material.dart';
import 'adder.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  Adder _adder = Adder();
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  int _result = 0;

  void _sumNumbers(){
    _adder.num1 = int.parse(_num1.text);
    _adder.num2 = int.parse(_num2.text);
    setState((){
      _result = _adder.sum();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            // first input field
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                key: Key('textField1'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 1st number',
                  hintText: 'Enter 1st number',
                ),
                controller: _num1,
              ),
            ),
            //second input filed
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                key: Key('textField2'),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 2nd number',
                  hintText: 'Enter 2nd number',
                ),
                controller: _num2,
              ),
            ),
            ElevatedButton(
              key: Key('addButton'),
              child: Text('ADD'),
              onPressed: _sumNumbers,
            ),
            SizedBox(height: 15),
            Text(
              '$_result',
              key: Key('addText'),
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}