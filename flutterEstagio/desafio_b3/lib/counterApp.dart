import 'package:flutter/material.dart';
import 'package:flutter_app_b/myHomePage.dart';

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Counter App'),
      debugShowCheckedModeBanner: false,
    );
  }
}


