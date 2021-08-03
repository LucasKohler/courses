
class Counter {
  int _value = 0;

  Counter();

  void increment() {
    this._value++;
  }

  int get value => this._value;
}