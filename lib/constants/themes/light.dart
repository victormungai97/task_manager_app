// constants/themes/light.dart

part of 'themes.dart';

/// Primary ``[Theme]`` configuration for use in the application.
/// Will also serve for light mode when implementing varying app themes

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
  useMaterial3: true,
  textTheme: GoogleFonts.rubikTextTheme(),
  iconTheme: const IconThemeData(size: 28),
);
