import 'package:flutter/material.dart';

import 'contact.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.contact}) : super(key: key);
  
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(contact.gender),
            Text(contact.phone),
            Text(contact.email)
          ],
        )
      )
    );
  }
}
