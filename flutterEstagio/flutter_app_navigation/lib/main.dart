import 'package:flutter/material.dart';
import 'package:flutter01_basicnavigatio/secondRoute.dart';
import 'firstRoute.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => FirstRoute(),
      '/secondRoute': (context) => SecondRoute()
    },
  ));
}
