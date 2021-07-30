import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffdce0cc),
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Flutter Still Second Demo Home Page'),
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
  int _counter1 = 0;
  int _counter2 = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }
  void _incrementCounter2() {
    setState(() {
      _counter2++;
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
              '$_counter1',
              style: Theme.of(context).textTheme.headline4,
              key: Key('textButton1')
            ),
            Text(
              'You have pushed the button 2 this many times:',
            ),
            Text(
              '$_counter2',
              style: Theme.of(context).textTheme.headline4,
                key: Key('textButton2')
            ),
          ],

        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter1,
            tooltip: 'increment',
            child: Icon(Icons.add),
            key: Key('button1'),

          ),
          FloatingActionButton(
            onPressed: _incrementCounter2,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            key: Key('button2'),
          ),
        ],
      ),

    );
  }
}
