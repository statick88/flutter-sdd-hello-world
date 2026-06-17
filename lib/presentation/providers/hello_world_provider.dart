import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sdd_hello_world/data/repositories/greeting_repository_impl.dart';
import 'package:flutter_sdd_hello_world/domain/entities/greeting.dart';
import 'package:flutter_sdd_hello_world/domain/repositories/greeting_repository.dart';

final greetingRepositoryProvider = Provider<GreetingRepository>((ref) {
  return const GreetingRepositoryImpl();
});

final helloWorldProvider = FutureProvider.autoDispose<Greeting>((ref) async {
  final repository = ref.watch(greetingRepositoryProvider);
  return repository.getGreeting();
});