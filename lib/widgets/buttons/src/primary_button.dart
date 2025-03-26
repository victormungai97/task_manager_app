// widgets/buttons/src/primary_button.dart

import 'package:flutter/material.dart';
import 'package:task_manager_app/constants/constants.dart';

/// Widget holding the most commonly used button in the application

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.onPressed,
    super.key,
    this.icon,
    this.label,
    this.style,
  });

  final VoidCallback onPressed;
  final Widget? icon;
  final Widget? label;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: icon,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF680212),
          textStyle: const TextStyle(fontSize: 18),
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          fixedSize: const Size(250, 55),
        ),
        label: label ?? const Text(Labels.submit),
      ),
    );
  }
}
