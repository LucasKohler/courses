import 'package:flutter/material.dart';
import 'package:flutter_app_b/counter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Counter _counter = Counter();
  Counter _counter2 = Counter();

  void _incrementCounter() {
    setState(() {
      _counter.increment();
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button 1 this many times:',
            ),
            Text(
                '${_counter.value}',
                style: Theme.of(context).textTheme.headline4,
                key: Key('textButton1')
            ),
            Text(
              'You have pushed the button 2 this many times:',
            ),
            Text(
                '${_counter2.value}',
                style: Theme.of(context).textTheme.headline4,
                key: Key('textButton2')
            ),
          ],

        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.add),
            key: Key('button1'),
          ),
          SizedBox(height: 2),
          FloatingActionButton(
            onPressed: _incrementCounter2,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            key: Key('button2'),
          ),
        ],
      )
    );
  }
}