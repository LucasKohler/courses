import 'package:flutter/material.dart';
import 'contactScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contact List',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ContactScreen(),
    debugShowCheckedModeBanner: false,
    )
  );
}
