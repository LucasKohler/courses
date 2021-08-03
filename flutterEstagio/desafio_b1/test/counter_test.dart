import 'package:test/test.dart';
import 'package:flutter_app_b/counter.dart';

void main(){
  test('Counter class increments test', () {
    Counter counter = Counter();

    expect(counter.value, 0);
    counter.increment();
    expect(counter.value, 1);
  });
}