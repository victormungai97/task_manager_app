// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) {
  return _ApplicationModel.fromJson(json);
}

/// @nodoc
mixin _$ApplicationModel {
  @JsonKey(name: ApplicationModelKeys.displayName)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: ApplicationModelKeys.packageName)
  String? get package => throw _privateConstructorUsedError;
  @JsonKey(name: ApplicationModelKeys.author)
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: ApplicationModelKeys.appVersion)
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: ApplicationModelKeys.installationId)
  String? get installationID => throw _privateConstructorUsedError;

  /// Serializes this ApplicationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApplicationModelCopyWith<ApplicationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationModelCopyWith<$Res> {
  factory $ApplicationModelCopyWith(
          ApplicationModel value, $Res Function(ApplicationModel) then) =
      _$ApplicationModelCopyWithImpl<$Res, ApplicationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: ApplicationModelKeys.displayName) String? name,
      @JsonKey(name: ApplicationModelKeys.packageName) String? package,
      @JsonKey(name: ApplicationModelKeys.author) String? author,
      @JsonKey(name: ApplicationModelKeys.appVersion) String? version,
      @JsonKey(name: ApplicationModelKeys.installationId)
      String? installationID});
}

/// @nodoc
class _$ApplicationModelCopyWithImpl<$Res, $Val extends ApplicationModel>
    implements $ApplicationModelCopyWith<$Res> {
  _$ApplicationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? package = freezed,
    Object? author = freezed,
    Object? version = freezed,
    Object? installationID = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      installationID: freezed == installationID
          ? _value.installationID
          : installationID // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicationModelImplCopyWith<$Res>
    implements $ApplicationModelCopyWith<$Res> {
  factory _$$ApplicationModelImplCopyWith(_$ApplicationModelImpl value,
          $Res Function(_$ApplicationModelImpl) then) =
      __$$ApplicationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ApplicationModelKeys.displayName) String? name,
      @JsonKey(name: ApplicationModelKeys.packageName) String? package,
      @JsonKey(name: ApplicationModelKeys.author) String? author,
      @JsonKey(name: ApplicationModelKeys.appVersion) String? version,
      @JsonKey(name: ApplicationModelKeys.installationId)
      String? installationID});
}

/// @nodoc
class __$$ApplicationModelImplCopyWithImpl<$Res>
    extends _$ApplicationModelCopyWithImpl<$Res, _$ApplicationModelImpl>
    implements _$$ApplicationModelImplCopyWith<$Res> {
  __$$ApplicationModelImplCopyWithImpl(_$ApplicationModelImpl _value,
      $Res Function(_$ApplicationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? package = freezed,
    Object? author = freezed,
    Object? version = freezed,
    Object? installationID = freezed,
  }) {
    return _then(_$ApplicationModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      installationID: freezed == installationID
          ? _value.installationID
          : installationID // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApplicationModelImpl extends _ApplicationModel {
  const _$ApplicationModelImpl(
      {@JsonKey(name: ApplicationModelKeys.displayName) this.name,
      @JsonKey(name: ApplicationModelKeys.packageName) this.package,
      @JsonKey(name: ApplicationModelKeys.author) this.author,
      @JsonKey(name: ApplicationModelKeys.appVersion) this.version,
      @JsonKey(name: ApplicationModelKeys.installationId) this.installationID})
      : super._();

  factory _$ApplicationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicationModelImplFromJson(json);

  @override
  @JsonKey(name: ApplicationModelKeys.displayName)
  final String? name;
  @override
  @JsonKey(name: ApplicationModelKeys.packageName)
  final String? package;
  @override
  @JsonKey(name: ApplicationModelKeys.author)
  final String? author;
  @override
  @JsonKey(name: ApplicationModelKeys.appVersion)
  final String? version;
  @override
  @JsonKey(name: ApplicationModelKeys.installationId)
  final String? installationID;

  @override
  String toString() {
    return 'ApplicationModel(name: $name, package: $package, author: $author, version: $version, installationID: $installationID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.installationID, installationID) ||
                other.installationID == installationID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, package, author, version, installationID);

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicationModelImplCopyWith<_$ApplicationModelImpl> get copyWith =>
      __$$ApplicationModelImplCopyWithImpl<_$ApplicationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicationModelImplToJson(
      this,
    );
  }
}

abstract class _ApplicationModel extends ApplicationModel {
  const factory _ApplicationModel(
      {@JsonKey(name: ApplicationModelKeys.displayName) final String? name,
      @JsonKey(name: ApplicationModelKeys.packageName) final String? package,
      @JsonKey(name: ApplicationModelKeys.author) final String? author,
      @JsonKey(name: ApplicationModelKeys.appVersion) final String? version,
      @JsonKey(name: ApplicationModelKeys.installationId)
      final String? installationID}) = _$ApplicationModelImpl;
  const _ApplicationModel._() : super._();

  factory _ApplicationModel.fromJson(Map<String, dynamic> json) =
      _$ApplicationModelImpl.fromJson;

  @override
  @JsonKey(name: ApplicationModelKeys.displayName)
  String? get name;
  @override
  @JsonKey(name: ApplicationModelKeys.packageName)
  String? get package;
  @override
  @JsonKey(name: ApplicationModelKeys.author)
  String? get author;
  @override
  @JsonKey(name: ApplicationModelKeys.appVersion)
  String? get version;
  @override
  @JsonKey(name: ApplicationModelKeys.installationId)
  String? get installationID;

  /// Create a copy of ApplicationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApplicationModelImplCopyWith<_$ApplicationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
