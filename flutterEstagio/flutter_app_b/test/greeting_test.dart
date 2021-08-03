import 'package:test/test.dart';
import 'package:flutter_app_b/greeting.dart';

void main() {
  test('Hello World Salutation Test', () {
    expect(Greeting().salutation, 'Hello World');
  });
}
