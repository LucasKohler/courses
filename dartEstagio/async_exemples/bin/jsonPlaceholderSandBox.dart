import 'package:http/http.dart' as http;

void main() async{
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var uri = Uri.parse(url);

  var response = await  http.get(uri);

  print(response.statusCode);
  print(response.body);
  print(response.headers);
  print(response.toString());
}