import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sdd_hello_world/domain/entities/greeting.dart';
import 'package:flutter_sdd_hello_world/presentation/providers/hello_world_provider.dart';
import 'package:flutter_sdd_hello_world/presentation/widgets/glassmorphism_card.dart';
import 'package:flutter_sdd_hello_world/presentation/theme/design_tokens.dart';

class HelloWorldScreen extends ConsumerWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingAsync = ref.watch(helloWorldProvider);

    return Scaffold(
      body: Center(
        child: greetingAsync.when(
          data: (greeting) => _GreetingContent(greeting: greeting),
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text(
            'Error: $error',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ),
    );
  }
}

class _GreetingContent extends StatelessWidget {
  const _GreetingContent({required this.greeting});

  final Greeting greeting;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GlassmorphismCard(
      padding: AppSpacing.xl,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Flutter Logo
          const FlutterLogo(size: 80),
          SizedBox(height: AppSpacing.lg),
          Semantics(
            label: 'Greeting message',
            child: Text(
              greeting.message,
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.w300,
                letterSpacing: -1.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: AppSpacing.md),
          Text(
            greeting.subtitle,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: isDark
                  ? AppColors.darkOnSurfaceVariant
                  : AppColors.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}