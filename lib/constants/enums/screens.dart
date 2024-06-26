// constants/enums/screens.dart

part of 'enums.dart';

/// Constants representing various devices with respect to their screen widths

enum DeviceScreenType {
  /// Constant for small (width < 568 px) hand held devices
  mobile,

  /// Constant for medium sized (568 <= width <= 768 px) but portable devices
  tablet,

  /// Constant for large devices (width > 768 px) like TVs, laptops and PC.
  desktop,
}
