// widgets/responsiveness/sizing_info.dart

part of 'responsiveness.dart';

/// Class having attributes uniquely identifying a device & widget's conditions.

@freezed
class SizingInformation with _$SizingInformation {
  /// Create an instance of ``[SizingInformation]``
  const factory SizingInformation({
    /// Direction in which device is physically facing / directed
    required Orientation orientation,

    /// Specific device on which app is running
    required DeviceScreenType deviceScreenType,

    /// Device screen's size
    required Size screenSize,

    /// Localized size of the specified widget
    required Size localWidgetSize,
  }) = _SizingInformation;

  @override
  String toString() {
    return 'Orientation:$orientation DeviceType:$deviceScreenType';
  }
}
