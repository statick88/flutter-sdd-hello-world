import 'package:flutter_sdd_hello_world/domain/entities/greeting.dart';
import 'package:flutter_sdd_hello_world/domain/repositories/greeting_repository.dart';

class GreetingRepositoryImpl implements GreetingRepository {
  const GreetingRepositoryImpl();

  @override
  Future<Greeting> getGreeting() async {
    return Greeting.defaultGreeting;
  }
}
