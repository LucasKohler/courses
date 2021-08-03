import 'package:test/test.dart';
import 'package:desafio_b4/adder.dart';

void main(){
  test('Adder class test', () {
    Adder adder = Adder();

    expect(adder.value, 0);
    adder.num1 = 3;
    adder.num2 = 2;
    adder.sum();
    expect(adder.value, 5);
  });
}