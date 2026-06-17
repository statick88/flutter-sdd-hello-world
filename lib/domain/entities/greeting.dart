class Greeting {
  const Greeting({
    required this.message,
    required this.subtitle,
  });

  final String message;
  final String subtitle;

  static const defaultGreeting = Greeting(
    message: 'Hola Mundo',
    subtitle: 'SDD + Clean Architecture + TDD + Gates',
  );
}
