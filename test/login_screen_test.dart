import 'package:first_unittest_flutter/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should have a title', (WidgetTester tester) async {
    //Arrange
   await tester.pumpWidget(const MaterialApp(home: LoginScreen()));

    //ACT
    Finder title = find.text("Login");

    //Assert
    expect(title, findsOneWidget);
  });
}
