// widgets/misc/src/title.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/constants/constants.dart';
import 'package:task_manager_app/models/models.dart';

/// Widget to visualize represent the application

class Title extends StatelessWidget {
  /// Construct a ``[Title]``
  const Title({
    super.key,
    this.imageColor,
    this.textColor,
    this.direction = Axis.vertical,
  });

  /// Color for the icon
  final Color? imageColor;

  /// Color for the application name
  final Color? textColor;

  /// The direction to use as the main axis.
  final Axis direction;

  @override
  Widget build(BuildContext context) {
    final upDown = direction == Axis.vertical;
    return Container(
      alignment: Alignment.center,
      margin: upDown
          ? const EdgeInsets.symmetric(vertical: 12)
          : const EdgeInsets.symmetric(horizontal: 12),
      child: Flex(
        direction: direction,
        mainAxisAlignment:
            upDown ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white.withValues(alpha: .9),
            radius: upDown ? 70 : 20,
            child: Image.asset(
              'images/pin.png',
              scale: upDown ? 6.5 : null,
              width: !upDown ? 20 : null,
              height: !upDown ? 20 : null,
              color: imageColor,
            ),
          ),
          if (upDown) const SizedBox(height: 8) else const SizedBox(width: 16),
          Consumer<ApplicationModel>(
            builder: (context, application, widget) {
              return Text(
                application.name ?? Labels.application,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
        ],
      ),
    );
  }
}
