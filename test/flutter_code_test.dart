library flutter_code;

void main() {
  test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
  });
}



/// A Calculator.
class Calculator {

  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;

}

void expect(int addOne, int i) {
}

void test(String s, Null Function() param1) {
}
