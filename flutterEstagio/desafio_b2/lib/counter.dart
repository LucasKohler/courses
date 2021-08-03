
class Counter {
  int _value = 0;
  bool _attempt = false;

  Counter();

  void increment() {
    this._value++;
  }

  void decrement() {
    if (this._value - 1 < 0) {
      this._attempt = true;
      return;
    }
      this._value--;
    }

  int get value => this._value;
  bool get attempt => this._attempt;
}