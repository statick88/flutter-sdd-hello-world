// This is a basic Flutter widget test for the Hello World app.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_sdd_hello_world/main.dart';

void main() {
  testWidgets('Hello World app launches and displays greeting', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: PruebaApp()));

    // Wait for the future to complete
    await tester.pumpAndSettle();

    // Verify that greeting is displayed
    expect(find.text('Hola Mundo'), findsOneWidget);
    expect(find.text('SDD + Clean Architecture + TDD + Gates'), findsOneWidget);

    // Verify no debug banner
    expect(find.byType(Banner), findsNothing);
  });
}