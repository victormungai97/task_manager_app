// pages/login/frame.dart

part of 'login.dart';

/// Widget that defines the underlying framework holding the screen

class _Frame extends StatelessWidget {
  const _Frame({required this.child})
      : super(key: const ValueKey('LoginFrame'));

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.45),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        height: MediaQuery.sizeOf(context).height / 1.4,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: child,
      ),
    );
  }
}
