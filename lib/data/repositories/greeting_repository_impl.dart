import 'package:prueba/domain/entities/greeting.dart';
import 'package:prueba/domain/repositories/greeting_repository.dart';

class GreetingRepositoryImpl implements GreetingRepository {
  const GreetingRepositoryImpl();

  @override
  Future<Greeting> getGreeting() async {
    return Greeting.defaultGreeting;
  }
}
