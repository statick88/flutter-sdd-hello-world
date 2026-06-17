import 'package:flutter_test/flutter_test.dart';

import 'package:prueba/domain/entities/greeting.dart';

void main() {
  group('Greeting', () {
    test('should have correct default message', () {
      const greeting = Greeting.defaultGreeting;

      expect(greeting.message, 'Hola Mundo');
      expect(greeting.subtitle, 'SDD + Clean Architecture + TDD + Gates');
    });

    test('should create custom greeting', () {
      const greeting = Greeting(
        message: 'Custom',
        subtitle: 'Test',
      );

      expect(greeting.message, 'Custom');
      expect(greeting.subtitle, 'Test');
    });
  });
}
