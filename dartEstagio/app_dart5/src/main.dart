import 'package:http/http.dart' as http;
import 'dart:convert';
import './classes/user.dart';

void main() async {
  var url = Uri.parse('https://jsonplaceholder.typicode.com/users');
  var response = await http.get(url);
  print(response.statusCode);

  var myUsers = List<User?>.empty(growable: true);
  var userList = json.decode(response.body);
  //for(var item in userList){
  //  print(json.encode(item));
  //}

  for (Map<String, dynamic> user in userList) {
    myUsers.add(User.fromJson(json.encode(user)));
  }

  myUsers.forEach((user) => print(user));
}
