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
}
