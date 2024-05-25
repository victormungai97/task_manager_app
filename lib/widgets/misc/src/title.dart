import 'package:flutter/material.dart';
import 'package:task_manager_app/constants/constants.dart';

/// Widget to visualize represent the application

class Title extends StatelessWidget {
  const Title({super.key, this.imageColor, this.textColor});

  final Color? imageColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withOpacity(.9),
            radius: 70,
            child: Image.asset(
              'images/pin.png',
              scale: 6.5,
              color: imageColor,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            Labels.application,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: textColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
