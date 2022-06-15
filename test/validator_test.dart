import 'package:first_unittest_flutter/validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  String? result;
  test('validate for empty email id', () {
    //arrange & act
    result = Validator.validateEmail('');

    //Assert
    expect(result, "Required Field");
  });
  test('validate for invalid email id', () {
    //arrange & act
    result = Validator.validateEmail('fasdff');

    //Assert
    expect(result, "Please enter a valid email id");
  });
  test('validate for Valid email id', () {
    //arrange & act
    result = Validator.validateEmail('abc@gmail.com');

    //Assert
    expect(result, null);
  });

  test('validate for empty password', () {
    //arrange & act
    result = Validator.validatePassword('');

    //Assert
    expect(result, "Required Field");
  });

  test('validate for invalid password', () {
    //arrange & act
    result = Validator.validatePassword('pass');

    //Assert
    expect(result, "Please enter atleast 8 character for password");
  });
  test('validate for valid password', () {
    //arrange & act
    result = Validator.validatePassword('password');

    //Assert
    expect(result, null);
  });
}
