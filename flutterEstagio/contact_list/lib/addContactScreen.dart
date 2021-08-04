
import 'package:flutter/material.dart';

import 'contact.dart';

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: AddContact(),
    );
  }
}

class AddContact extends StatefulWidget {
  AddContact({Key? key}) : super(key: key);

  @override
  _AddContactState createState() => _AddContactState();
}
class _AddContactState extends State<AddContact> {

  TextEditingController _name = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  
  void _submit(){
    Navigator.pop(
      context,
      Contact(
        _name.text.toString(),
        textToGender(_gender),
        _phone.text.toString(),
        _email.text.toString(),
      ),
    );
  }

  Gender textToGender(TextEditingController gender){
    if (gender.text == 'Masculino'){
      return Gender.M;
    } else if (gender.text == 'Feminino') {
      return Gender.F;
    } else {
      return Gender.O;
    }
  }

  @override
  Widget build(BuildContext context){
    const sizedBoxSpace = SizedBox(height: 18);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child : Form(
          child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Name',
              ),
              controller: _name,
            ),
            sizedBoxSpace,
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                icon: Icon(Icons.person_outline),
                hintText: 'Gender',
                labelText: 'Gender',
              ),
              controller: _gender,
            ),
            sizedBoxSpace,
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                icon: Icon(Icons.phone),
                hintText: 'Phone number',
                labelText: 'Phone',
              ),
              controller: _phone,
            ),
            sizedBoxSpace,
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                icon: Icon(Icons.email),
                hintText: 'Email',
                labelText: 'Email',
              ),
              controller: _email,
            ),
            sizedBoxSpace,
            Center(
              child: ElevatedButton(
                onPressed: () => _submit(),
                child: Text('Submit'),
              ),
            ),
          ],
        ),
          ),
        ),
      )
    );
  }
}