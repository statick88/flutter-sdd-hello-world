import 'package:flutter_test/flutter_test.dart';

import 'package:prueba/data/repositories/greeting_repository_impl.dart';
import 'package:prueba/domain/entities/greeting.dart';

void main() {
  group('GreetingRepositoryImpl', () {
    late GreetingRepositoryImpl repository;

    setUp(() {
      repository = const GreetingRepositoryImpl();
    });

    test('should return default greeting', () async {
      final greeting = await repository.getGreeting();

      expect(greeting, isA<Greeting>());
      expect(greeting.message, 'Hola Mundo');
      expect(greeting.subtitle, 'SDD + Clean Architecture + TDD + Gates');
    });
  });
}
