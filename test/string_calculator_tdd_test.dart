import 'package:string_calculator_tdd/string_calculator_tdd.dart';
import 'package:test/test.dart';

void main() {
 group('StringCalculator.add', () {
    test('returns 0 for empty string', () {
      expect(StringCalculatorTDD.add(''), equals(0));
    });
  });

test('returns number if input is a single number like "1"', () {
      expect(StringCalculatorTDD.add('1'), equals(1));
    });  

test('returns sum of two comma-separated numbers like "1,2"', () {
      expect(StringCalculatorTDD.add('1,2'), equals(3));
    });   

test('returns sum of any amount of comma separated numbers like "1,2,3,4"', () {
  expect(StringCalculatorTDD.add('1,2,3,4'), equals(10));
  expect(StringCalculatorTDD.add('10,20,30,40,50'), equals(150));
});

test('returns sum if numbers are separated with commas and/or new lines like "1\\n2,3"', () {
  expect(StringCalculatorTDD.add('1\n2,3'), equals(6));
  expect(StringCalculatorTDD.add('4\n5\n6'), equals(15));
});

test('supports custom delimiter with format //;\n1;2 and returns sum', () {
  expect(StringCalculatorTDD.add('//;\n1;2'), equals(3));
  expect(StringCalculatorTDD.add('//#\n4#5#6'), equals(15));
});
}
