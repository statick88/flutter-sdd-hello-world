import 'package:go_router/go_router.dart';
import 'package:flutter_sdd_hello_world/presentation/screens/hello_world_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HelloWorldScreen(),
    ),
  ],
);