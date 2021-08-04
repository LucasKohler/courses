import 'dart:math';

import 'package:flutter/material.dart';
import 'addContactScreen.dart';
import 'contact.dart';
import 'detailScreen.dart';

class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact list'),
      ),
      body: ContactList(
      contacts: List.generate(
        5,
        (i) => Contact('Ronaldo', Gender.M, '5551999424694','ronaldinho71@gmail.com')
      ),
    ),
    );
  }

}

class ContactList extends StatefulWidget {
  const ContactList({Key? key, required this.contacts}) : super(key: key);

  final List<Contact> contacts;

  @override
  _ContactListState createState() => _ContactListState(contacts);
}

class _ContactListState extends State<ContactList> {
  _ContactListState(this._contacts);

  final List<Contact> _contacts;

  void _navigateAndAddContact(BuildContext context) async {
    final contact = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddContactScreen()),
    );

    if(contact != null && contact.name.length != 0) {
      setState(() => _contacts.add(contact));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: _contacts.length,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                    leading: ExcludeSemantics(
                      child: CircleAvatar(
                        child: Text('${_contacts[index].name[0]}'),
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete_forever),
                      color: Colors.red,
                      onPressed: () => setState(() => _contacts.removeAt(index)),
                    ),
                    title: Text(_contacts[index].name),
                    subtitle: Text(_contacts[index].phone), 
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(contact: _contacts[index]),
                        )
                      );
                    }
                  ),
                  Divider(thickness: 1.5, height: 0),
                ],
              );

            //  return ListTile(
               // title: Text(_contacts[index].name),
               // onTap: () {
               //   Navigator.push(
               //     context,
               //     MaterialPageRoute(
               //       builder: (context) => DetailScreen(contact: _contacts[index]),
               //     ),
               //   );
              //  },
              //);
            },
            //separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1.5),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'New Contact',
          child: Icon(Icons.person_add),
          onPressed: () => _navigateAndAddContact(context),
        )
    );
  }
}
