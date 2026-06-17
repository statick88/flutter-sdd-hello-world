import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sdd_hello_world/presentation/providers/hello_world_provider.dart';
import 'package:flutter_sdd_hello_world/data/repositories/greeting_repository_impl.dart';
import 'package:flutter_sdd_hello_world/domain/repositories/greeting_repository.dart';

void main() {
  group('HelloWorldProvider', () {
    late ProviderContainer container;

    setUp(() {
      container = ProviderContainer(
        overrides: [
          greetingRepositoryProvider.overrideWithValue(const GreetingRepositoryImpl()),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('should provide greeting repository', () {
      final repository = container.read(greetingRepositoryProvider);
      expect(repository, isA<GreetingRepository>());
    });

    test('should return greeting from repository', () async {
      final greeting = await container.read(helloWorldProvider.future);
      expect(greeting.message, 'Hola Mundo');
      expect(greeting.subtitle, 'SDD + Clean Architecture + TDD + Gates');
    });
  });
}