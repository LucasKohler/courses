import 'package:flutter/material.dart';

import 'contact.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.contact}) : super(key: key);
  
  final Contact contact;

  String genderToString(String gender){
    if (gender == 'Gender.M'){
      return 'Maculino';
    } else if (gender == 'Gender.F'){
      return 'Feminino';
    } else {
      return 'Outro';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text(genderToString(contact.gender)),
            ),
            Divider(thickness: 1.5),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text(contact.phone)
            ),
            Divider(thickness: 1.5),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(contact.email),
            ),
          ],
        )
      )
    );
  }
}
