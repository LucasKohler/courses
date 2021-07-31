import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bid Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter += 50.0;
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
              'My Maximum Bid: $_counter',
              style: TextStyle(color: Colors.black87.withOpacity(0.7))
            ),
            TextButton(
              onPressed: _incrementCounter,
              style: TextButton.styleFrom(primary: Colors.black),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.add_circle),
                  SizedBox(width: 8),
                  Text('Increase Bid'),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
