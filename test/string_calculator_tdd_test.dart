import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
 group('StringCalculator.add', () {
    test('returns 0 for empty string', () {
      expect(StringCalculatorTDD.add(''), equals(0));
    });
  });
}
