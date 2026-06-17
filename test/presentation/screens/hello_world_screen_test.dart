import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sdd_hello_world/presentation/screens/hello_world_screen.dart';
import 'package:flutter_sdd_hello_world/presentation/widgets/glassmorphism_card.dart';
import 'package:flutter_sdd_hello_world/presentation/providers/hello_world_provider.dart';
import 'package:flutter_sdd_hello_world/data/repositories/greeting_repository_impl.dart';

void main() {
  group('HelloWorldScreen', () {
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

    testWidgets('displays greeting message', (WidgetTester tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            home: HelloWorldScreen(),
          ),
        ),
      );

      // Wait for future to complete
      await tester.pumpAndSettle();

      expect(find.text('Hola Mundo'), findsOneWidget);
      expect(find.text('SDD + Clean Architecture + TDD + Gates'), findsOneWidget);
    });

    testWidgets('has accessibility semantics', (WidgetTester tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            home: HelloWorldScreen(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      // Check for semantic labels on the Text widget
      final textFinder = find.text('Hola Mundo');
      expect(textFinder, findsOneWidget);
      final semantics = tester.getSemantics(textFinder);
      expect(semantics.label, contains('Greeting message'));
    });

    testWidgets('uses GlassmorphismCard', (WidgetTester tester) async {
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: const MaterialApp(
            home: HelloWorldScreen(),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(GlassmorphismCard), findsOneWidget);
    });
  });
}