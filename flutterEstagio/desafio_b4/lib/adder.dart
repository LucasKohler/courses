
class Adder {
  int _num1 = 0;
  int _num2 = 0;

  Adder();

  set num1(int num){
    this._num1 = num;
  }

  set num2(int num){
    this._num2 = num;
  }

  int get value{
    return sum();
  }

  int sum(){
    return this._num1 + this._num2;
  }
}
