import 'package:prueba/domain/entities/greeting.dart';

abstract class GreetingRepository {
  Future<Greeting> getGreeting();
}
