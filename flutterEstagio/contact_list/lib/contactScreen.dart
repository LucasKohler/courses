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
        1,
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

    setState((){
      _contacts.add(contact);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemCount: _contacts.length,
            padding: const EdgeInsets.all(8.0),
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_contacts[index].name),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(contact: _contacts[index]),
                    ),
                  );
                },
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(thickness: 1.5),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'New Contact',
          child: Icon(Icons.person_add),
          onPressed: () => _navigateAndAddContact(context),
        )
    );
  }
}
