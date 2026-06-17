import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:prueba/presentation/widgets/glassmorphism_card.dart';

void main() {
  group('GlassmorphismCard', () {
    testWidgets('renders child with glassmorphism decoration', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GlassmorphismCard(
              child: const Text('Test Content'),
            ),
          ),
        ),
      );

      expect(find.text('Test Content'), findsOneWidget);
      expect(find.byType(GlassmorphismCard), findsOneWidget);
    });

    testWidgets('applies custom border radius', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GlassmorphismCard(
              borderRadius: 24.0,
              child: const Text('Test'),
            ),
          ),
        ),
      );

      final card = tester.widget<GlassmorphismCard>(find.byType(GlassmorphismCard));
      expect(card.borderRadius, 24.0);
    });

    testWidgets('applies custom blur', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GlassmorphismCard(
              blur: 20.0,
              child: const Text('Test'),
            ),
          ),
        ),
      );

      final card = tester.widget<GlassmorphismCard>(find.byType(GlassmorphismCard));
      expect(card.blur, 20.0);
    });
  });
}