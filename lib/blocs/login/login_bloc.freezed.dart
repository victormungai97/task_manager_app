// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(({String password, String username}) credentials)
        userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(({String password, String username}) credentials)?
        userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(({String password, String username}) credentials)?
        userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStarted value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStartedImplCopyWith<$Res> {
  factory _$$LoginStartedImplCopyWith(
          _$LoginStartedImpl value, $Res Function(_$LoginStartedImpl) then) =
      __$$LoginStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginStartedImpl>
    implements _$$LoginStartedImplCopyWith<$Res> {
  __$$LoginStartedImplCopyWithImpl(
      _$LoginStartedImpl _value, $Res Function(_$LoginStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStartedImpl implements _LoginStarted {
  const _$LoginStartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(({String password, String username}) credentials)
        userLoggedIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(({String password, String username}) credentials)?
        userLoggedIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(({String password, String username}) credentials)?
        userLoggedIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStarted value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _LoginStarted implements LoginEvent {
  const factory _LoginStarted() = _$LoginStartedImpl;
}

/// @nodoc
abstract class _$$UserLoggedInImplCopyWith<$Res> {
  factory _$$UserLoggedInImplCopyWith(
          _$UserLoggedInImpl value, $Res Function(_$UserLoggedInImpl) then) =
      __$$UserLoggedInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({({String password, String username}) credentials});
}

/// @nodoc
class __$$UserLoggedInImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$UserLoggedInImpl>
    implements _$$UserLoggedInImplCopyWith<$Res> {
  __$$UserLoggedInImplCopyWithImpl(
      _$UserLoggedInImpl _value, $Res Function(_$UserLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
  }) {
    return _then(_$UserLoggedInImpl(
      null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as ({String password, String username}),
    ));
  }
}

/// @nodoc

class _$UserLoggedInImpl implements _UserLoggedIn {
  const _$UserLoggedInImpl(this.credentials);

  @override
  final ({String password, String username}) credentials;

  @override
  String toString() {
    return 'LoginEvent.userLoggedIn(credentials: $credentials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoggedInImpl &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      __$$UserLoggedInImplCopyWithImpl<_$UserLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(({String password, String username}) credentials)
        userLoggedIn,
  }) {
    return userLoggedIn(credentials);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(({String password, String username}) credentials)?
        userLoggedIn,
  }) {
    return userLoggedIn?.call(credentials);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(({String password, String username}) credentials)?
        userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(credentials);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginStarted value) started,
    required TResult Function(_UserLoggedIn value) userLoggedIn,
  }) {
    return userLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginStarted value)? started,
    TResult? Function(_UserLoggedIn value)? userLoggedIn,
  }) {
    return userLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginStarted value)? started,
    TResult Function(_UserLoggedIn value)? userLoggedIn,
    required TResult orElse(),
  }) {
    if (userLoggedIn != null) {
      return userLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _UserLoggedIn implements LoginEvent {
  const factory _UserLoggedIn(
          final ({String password, String username}) credentials) =
      _$UserLoggedInImpl;

  ({String password, String username}) get credentials;
  @JsonKey(ignore: true)
  _$$UserLoggedInImplCopyWith<_$UserLoggedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel authenticatedUser) complete,
    required TResult Function(String exception) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel authenticatedUser)? complete,
    TResult? Function(String exception)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel authenticatedUser)? complete,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginDone value) complete,
    required TResult Function(LoginError value) exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginDone value)? complete,
    TResult? Function(LoginError value)? exception,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginDone value)? complete,
    TResult Function(LoginError value)? exception,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel authenticatedUser) complete,
    required TResult Function(String exception) exception,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel authenticatedUser)? complete,
    TResult? Function(String exception)? exception,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel authenticatedUser)? complete,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginDone value) complete,
    required TResult Function(LoginError value) exception,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginDone value)? complete,
    TResult? Function(LoginError value)? exception,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginDone value)? complete,
    TResult Function(LoginError value)? exception,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel authenticatedUser) complete,
    required TResult Function(String exception) exception,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel authenticatedUser)? complete,
    TResult? Function(String exception)? exception,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel authenticatedUser)? complete,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginDone value) complete,
    required TResult Function(LoginError value) exception,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginDone value)? complete,
    TResult? Function(LoginError value)? exception,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginDone value)? complete,
    TResult Function(LoginError value)? exception,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginDoneImplCopyWith<$Res> {
  factory _$$LoginDoneImplCopyWith(
          _$LoginDoneImpl value, $Res Function(_$LoginDoneImpl) then) =
      __$$LoginDoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel authenticatedUser});

  $UserModelCopyWith<$Res> get authenticatedUser;
}

/// @nodoc
class __$$LoginDoneImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginDoneImpl>
    implements _$$LoginDoneImplCopyWith<$Res> {
  __$$LoginDoneImplCopyWithImpl(
      _$LoginDoneImpl _value, $Res Function(_$LoginDoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticatedUser = null,
  }) {
    return _then(_$LoginDoneImpl(
      null == authenticatedUser
          ? _value.authenticatedUser
          : authenticatedUser // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get authenticatedUser {
    return $UserModelCopyWith<$Res>(_value.authenticatedUser, (value) {
      return _then(_value.copyWith(authenticatedUser: value));
    });
  }
}

/// @nodoc

class _$LoginDoneImpl implements LoginDone {
  const _$LoginDoneImpl(this.authenticatedUser);

  @override
  final UserModel authenticatedUser;

  @override
  String toString() {
    return 'LoginState.complete(authenticatedUser: $authenticatedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDoneImpl &&
            (identical(other.authenticatedUser, authenticatedUser) ||
                other.authenticatedUser == authenticatedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticatedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDoneImplCopyWith<_$LoginDoneImpl> get copyWith =>
      __$$LoginDoneImplCopyWithImpl<_$LoginDoneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel authenticatedUser) complete,
    required TResult Function(String exception) exception,
  }) {
    return complete(authenticatedUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel authenticatedUser)? complete,
    TResult? Function(String exception)? exception,
  }) {
    return complete?.call(authenticatedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel authenticatedUser)? complete,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(authenticatedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginDone value) complete,
    required TResult Function(LoginError value) exception,
  }) {
    return complete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginDone value)? complete,
    TResult? Function(LoginError value)? exception,
  }) {
    return complete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginDone value)? complete,
    TResult Function(LoginError value)? exception,
    required TResult orElse(),
  }) {
    if (complete != null) {
      return complete(this);
    }
    return orElse();
  }
}

abstract class LoginDone implements LoginState {
  const factory LoginDone(final UserModel authenticatedUser) = _$LoginDoneImpl;

  UserModel get authenticatedUser;
  @JsonKey(ignore: true)
  _$$LoginDoneImplCopyWith<_$LoginDoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String exception});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$LoginErrorImpl(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl({required this.exception});

  @override
  final String exception;

  @override
  String toString() {
    return 'LoginState.exception(exception: $exception)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel authenticatedUser) complete,
    required TResult Function(String exception) exception,
  }) {
    return exception(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel authenticatedUser)? complete,
    TResult? Function(String exception)? exception,
  }) {
    return exception?.call(this.exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel authenticatedUser)? complete,
    TResult Function(String exception)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this.exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginDone value) complete,
    required TResult Function(LoginError value) exception,
  }) {
    return exception(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginDone value)? complete,
    TResult? Function(LoginError value)? exception,
  }) {
    return exception?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginDone value)? complete,
    TResult Function(LoginError value)? exception,
    required TResult orElse(),
  }) {
    if (exception != null) {
      return exception(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError({required final String exception}) =
      _$LoginErrorImpl;

  String get exception;
  @JsonKey(ignore: true)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
