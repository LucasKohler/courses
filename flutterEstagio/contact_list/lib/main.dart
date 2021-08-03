import 'package:flutter/material.dart';
import 'contactScreen.dart';
import 'contact.dart';

void main() {
  runApp(MaterialApp(
    title: 'Contact List',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ContactScreen(
        contacts: List.generate(
            1,
            (i) => Contact('Ronaldo', Gender.M, '5551999424694',
                'ronaldinho71@gmail.com'))),
  ));
}
