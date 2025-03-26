// utilities/extensions/strings.dart

part of 'extensions.dart';

/// Extension to ``[String]`` class to provide miscellaneous functionalities
extension StringX on String? {
  /// The string contains content i.e. characters
  bool get exists => this != null && this!.isNotEmpty;

  /// The string without any leading whitespace and optional [character]
  String leftStrip([String? character]) {
    if (this == null) return '';
    final trimmed = (this ?? '').trimLeft();

    if (character != null && trimmed.startsWith(character)) {
      return trimmed.substring(1);
    }

    return trimmed;
  }

  /// The string without any trailing whitespace and optional [character]
  String rightStrip([String? character]) {
    if (this == null) return '';
    final trimmed = (this ?? '').trimRight();

    if (character != null && trimmed.endsWith(character)) {
      return trimmed.substring(0, trimmed.length - 1);
    }

    return trimmed;
  }

  /// The string without any leading and trailing whitespace and optional [character]
  String strip([String? character]) => character != null
      ? leftStrip(character).rightStrip(character)
      : (this ?? '').trim();
}
