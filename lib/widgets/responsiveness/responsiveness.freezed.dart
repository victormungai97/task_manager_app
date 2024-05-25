// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'responsiveness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SizingInformation {
  /// Direction in which device is physically facing / directed
  Orientation get orientation => throw _privateConstructorUsedError;

  /// Specific device on which app is running
  DeviceScreenType get deviceScreenType => throw _privateConstructorUsedError;

  /// Device screen's size
  Size get screenSize => throw _privateConstructorUsedError;

  /// Localized size of the specified widget
  Size get localWidgetSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SizingInformationCopyWith<SizingInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizingInformationCopyWith<$Res> {
  factory $SizingInformationCopyWith(
          SizingInformation value, $Res Function(SizingInformation) then) =
      _$SizingInformationCopyWithImpl<$Res, SizingInformation>;
  @useResult
  $Res call(
      {Orientation orientation,
      DeviceScreenType deviceScreenType,
      Size screenSize,
      Size localWidgetSize});
}

/// @nodoc
class _$SizingInformationCopyWithImpl<$Res, $Val extends SizingInformation>
    implements $SizingInformationCopyWith<$Res> {
  _$SizingInformationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? deviceScreenType = null,
    Object? screenSize = null,
    Object? localWidgetSize = null,
  }) {
    return _then(_value.copyWith(
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceScreenType: null == deviceScreenType
          ? _value.deviceScreenType
          : deviceScreenType // ignore: cast_nullable_to_non_nullable
              as DeviceScreenType,
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
      localWidgetSize: null == localWidgetSize
          ? _value.localWidgetSize
          : localWidgetSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SizingInformationImplCopyWith<$Res>
    implements $SizingInformationCopyWith<$Res> {
  factory _$$SizingInformationImplCopyWith(_$SizingInformationImpl value,
          $Res Function(_$SizingInformationImpl) then) =
      __$$SizingInformationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Orientation orientation,
      DeviceScreenType deviceScreenType,
      Size screenSize,
      Size localWidgetSize});
}

/// @nodoc
class __$$SizingInformationImplCopyWithImpl<$Res>
    extends _$SizingInformationCopyWithImpl<$Res, _$SizingInformationImpl>
    implements _$$SizingInformationImplCopyWith<$Res> {
  __$$SizingInformationImplCopyWithImpl(_$SizingInformationImpl _value,
      $Res Function(_$SizingInformationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orientation = null,
    Object? deviceScreenType = null,
    Object? screenSize = null,
    Object? localWidgetSize = null,
  }) {
    return _then(_$SizingInformationImpl(
      orientation: null == orientation
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as Orientation,
      deviceScreenType: null == deviceScreenType
          ? _value.deviceScreenType
          : deviceScreenType // ignore: cast_nullable_to_non_nullable
              as DeviceScreenType,
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
      localWidgetSize: null == localWidgetSize
          ? _value.localWidgetSize
          : localWidgetSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$SizingInformationImpl implements _SizingInformation {
  const _$SizingInformationImpl(
      {required this.orientation,
      required this.deviceScreenType,
      required this.screenSize,
      required this.localWidgetSize});

  /// Direction in which device is physically facing / directed
  @override
  final Orientation orientation;

  /// Specific device on which app is running
  @override
  final DeviceScreenType deviceScreenType;

  /// Device screen's size
  @override
  final Size screenSize;

  /// Localized size of the specified widget
  @override
  final Size localWidgetSize;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SizingInformationImpl &&
            (identical(other.orientation, orientation) ||
                other.orientation == orientation) &&
            (identical(other.deviceScreenType, deviceScreenType) ||
                other.deviceScreenType == deviceScreenType) &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize) &&
            (identical(other.localWidgetSize, localWidgetSize) ||
                other.localWidgetSize == localWidgetSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, orientation, deviceScreenType, screenSize, localWidgetSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SizingInformationImplCopyWith<_$SizingInformationImpl> get copyWith =>
      __$$SizingInformationImplCopyWithImpl<_$SizingInformationImpl>(
          this, _$identity);
}

abstract class _SizingInformation implements SizingInformation {
  const factory _SizingInformation(
      {required final Orientation orientation,
      required final DeviceScreenType deviceScreenType,
      required final Size screenSize,
      required final Size localWidgetSize}) = _$SizingInformationImpl;

  @override

  /// Direction in which device is physically facing / directed
  Orientation get orientation;
  @override

  /// Specific device on which app is running
  DeviceScreenType get deviceScreenType;
  @override

  /// Device screen's size
  Size get screenSize;
  @override

  /// Localized size of the specified widget
  Size get localWidgetSize;
  @override
  @JsonKey(ignore: true)
  _$$SizingInformationImplCopyWith<_$SizingInformationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
