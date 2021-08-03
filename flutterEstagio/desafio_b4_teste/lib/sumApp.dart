import 'package:flutter/material.dart';
import 'home.dart';

class SumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(title: 'Counter App'),
      debugShowCheckedModeBanner: false,
    );
  }
}


