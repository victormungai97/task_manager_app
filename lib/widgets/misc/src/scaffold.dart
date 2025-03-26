// widgets/misc/src/scaffold.dart

import 'package:flutter/material.dart';
import 'package:task_manager_app/widgets/responsiveness/responsiveness.dart';

/// Generic implementation of ``[Scaffold]`` with customizations for this app

class CustomScaffold extends Scaffold {
  /// Constructor of ``[CustomScaffold]``
  CustomScaffold({
    required Widget child,
    super.key,
    super.appBar,
    super.resizeToAvoidBottomInset,
    super.floatingActionButton,
  }) : super(
          body: SafeArea(
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/background.jpg'),
                ),
              ),
              child: ScreenTypeLayout(
                mobile: _Mobile(child: child),
                tablet: OrientationLayout(
                  landscape: _Desktop(child: child),
                  portrait: _Mobile(child: child),
                ),
                desktop: _Desktop(child: child),
              ),
            ),
          ),
        );
}

class _Mobile extends StatelessWidget {
  const _Mobile({required this.child}) : super(key: const ValueKey('Mobile'));

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          color: Colors.white.withValues(alpha: 0.2),
        ),
        child,
      ],
    );
  }
}

class _Desktop extends StatelessWidget {
  const _Desktop({required this.child}) : super(key: const ValueKey('Desktop'));

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          alignment: const Alignment(-1.5, -1),
          color: Colors.transparent,
          child: Image.asset('images/background.jpg'),
        ),
        child,
      ],
    );
  }
}
