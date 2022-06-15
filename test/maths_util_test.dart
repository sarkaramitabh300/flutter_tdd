import 'package:first_unittest_flutter/maths_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Maths Utils', () {
    test('check for two number addition', () {
      //Arrange
      var a = 10;
      var b = 20;
      //Act
      var sum = add(a, b);
      //Assert
      expect(sum, 30);
    });

    test('check for two numbers sumtraction', () {
      var a = 10;
      var b = 50;
      var sum = subtract(a, b);
      expect(sum, -40);
    });
    test('check for two numbers multiply', () {
      var a = 10;
      var b = 50;
      var sum = multiply(a, b);
      expect(sum, 500);
    });
  });
}
