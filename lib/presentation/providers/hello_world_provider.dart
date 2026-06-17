import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prueba/data/repositories/greeting_repository_impl.dart';
import 'package:prueba/domain/entities/greeting.dart';
import 'package:prueba/domain/repositories/greeting_repository.dart';

final greetingRepositoryProvider = Provider<GreetingRepository>((ref) {
  return const GreetingRepositoryImpl();
});

final helloWorldProvider = FutureProvider.autoDispose<Greeting>((ref) async {
  final repository = ref.watch(greetingRepositoryProvider);
  return repository.getGreeting();
});