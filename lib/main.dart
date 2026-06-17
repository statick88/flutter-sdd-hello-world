import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba/config/router.dart';
import 'package:prueba/presentation/theme/app_theme.dart';

void main() {
  runApp(const ProviderScope(child: PruebaApp()));
}

class PruebaApp extends StatelessWidget {
  const PruebaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Prueba Hello World',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: router,
    );
  }
}