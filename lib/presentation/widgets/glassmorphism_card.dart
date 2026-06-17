import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:prueba/presentation/theme/design_tokens.dart';

class GlassmorphismCard extends StatelessWidget {
  const GlassmorphismCard({
    required this.child,
    super.key,
    this.borderRadius = AppEffects.borderRadiusCard,
    this.blur = AppEffects.glassBlur,
    this.padding = AppSpacing.lg,
  });

  final Widget child;
  final double borderRadius;
  final double blur;
  final double padding;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkGlassBackground : AppColors.glassBackground,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: isDark ? AppColors.darkGlassBorder : AppColors.glassBorder,
            ),
            boxShadow: [
              BoxShadow(
                color: isDark ? AppColors.glassShadow : AppColors.glassShadow,
                blurRadius: 20,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: child,
        ),
      ),
    );
  }
}