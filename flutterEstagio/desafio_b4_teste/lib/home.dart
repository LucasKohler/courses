import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  TextEditingController _num1 = new TextEditingController();
  TextEditingController _num2 = new TextEditingController();
  int _result = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // first input field
            Padding(padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 1st number',
                  hintText: 'Enter 1st number',
                ),
                controller: _num1,
              ),
            ),
            //second input filed
            Padding(padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter 2nd number',
                  hintText: 'Enter 2nd number',
                ),
                controller: _num2,
              ),
            ),
            ElevatedButton(
              child: Text('ADD'),
              onPressed: (){
                setState((){
                  int sum = int.parse(_num1.text) + int.parse(_num2.text);
                  _result = sum;
                });
              },
            ),
            SizedBox(height: 15),
            new Text('$_result',
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