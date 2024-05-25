// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: UserModelKeys.id)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.userName)
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.emailAddress)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.firstName)
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.lastName)
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.gender)
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.profileImage)
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: UserModelKeys.authToken)
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: UserModelKeys.id) int? id,
      @JsonKey(name: UserModelKeys.userName) String? username,
      @JsonKey(name: UserModelKeys.emailAddress) String? email,
      @JsonKey(name: UserModelKeys.firstName) String? firstName,
      @JsonKey(name: UserModelKeys.lastName) String? lastName,
      @JsonKey(name: UserModelKeys.gender) String? gender,
      @JsonKey(name: UserModelKeys.profileImage) String? image,
      @JsonKey(name: UserModelKeys.authToken) String? token});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: UserModelKeys.id) int? id,
      @JsonKey(name: UserModelKeys.userName) String? username,
      @JsonKey(name: UserModelKeys.emailAddress) String? email,
      @JsonKey(name: UserModelKeys.firstName) String? firstName,
      @JsonKey(name: UserModelKeys.lastName) String? lastName,
      @JsonKey(name: UserModelKeys.gender) String? gender,
      @JsonKey(name: UserModelKeys.profileImage) String? image,
      @JsonKey(name: UserModelKeys.authToken) String? token});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? image = freezed,
    Object? token = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl extends _UserModel {
  const _$UserModelImpl(
      {@JsonKey(name: UserModelKeys.id) this.id,
      @JsonKey(name: UserModelKeys.userName) this.username,
      @JsonKey(name: UserModelKeys.emailAddress) this.email,
      @JsonKey(name: UserModelKeys.firstName) this.firstName,
      @JsonKey(name: UserModelKeys.lastName) this.lastName,
      @JsonKey(name: UserModelKeys.gender) this.gender,
      @JsonKey(name: UserModelKeys.profileImage) this.image,
      @JsonKey(name: UserModelKeys.authToken) this.token})
      : super._();

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @JsonKey(name: UserModelKeys.id)
  final int? id;
  @override
  @JsonKey(name: UserModelKeys.userName)
  final String? username;
  @override
  @JsonKey(name: UserModelKeys.emailAddress)
  final String? email;
  @override
  @JsonKey(name: UserModelKeys.firstName)
  final String? firstName;
  @override
  @JsonKey(name: UserModelKeys.lastName)
  final String? lastName;
  @override
  @JsonKey(name: UserModelKeys.gender)
  final String? gender;
  @override
  @JsonKey(name: UserModelKeys.profileImage)
  final String? image;
  @override
  @JsonKey(name: UserModelKeys.authToken)
  final String? token;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, firstName,
      lastName, gender, image, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
          {@JsonKey(name: UserModelKeys.id) final int? id,
          @JsonKey(name: UserModelKeys.userName) final String? username,
          @JsonKey(name: UserModelKeys.emailAddress) final String? email,
          @JsonKey(name: UserModelKeys.firstName) final String? firstName,
          @JsonKey(name: UserModelKeys.lastName) final String? lastName,
          @JsonKey(name: UserModelKeys.gender) final String? gender,
          @JsonKey(name: UserModelKeys.profileImage) final String? image,
          @JsonKey(name: UserModelKeys.authToken) final String? token}) =
      _$UserModelImpl;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @JsonKey(name: UserModelKeys.id)
  int? get id;
  @override
  @JsonKey(name: UserModelKeys.userName)
  String? get username;
  @override
  @JsonKey(name: UserModelKeys.emailAddress)
  String? get email;
  @override
  @JsonKey(name: UserModelKeys.firstName)
  String? get firstName;
  @override
  @JsonKey(name: UserModelKeys.lastName)
  String? get lastName;
  @override
  @JsonKey(name: UserModelKeys.gender)
  String? get gender;
  @override
  @JsonKey(name: UserModelKeys.profileImage)
  String? get image;
  @override
  @JsonKey(name: UserModelKeys.authToken)
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
