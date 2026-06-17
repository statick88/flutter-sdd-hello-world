import 'package:flutter_sdd_hello_world/domain/entities/greeting.dart';

abstract class GreetingRepository {
  Future<Greeting> getGreeting();
}
