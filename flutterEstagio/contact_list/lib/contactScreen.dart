import 'package:flutter/material.dart';
import 'contact.dart';
import 'detailScreen.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key, required this.contacts}) : super(key: key);

  final List<Contact> contacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Contacts')),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(contacts[index].name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(contact: contacts[index]),
                    ),
                  );
                },
              );
            }),
        floatingActionButton: FloatingActionButton(
          tooltip: 'New Contact',
          child: Icon(Icons.add),
          onPressed: null,
        ));
  }
}
