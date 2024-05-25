// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? route) navigated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? route)? navigated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? route)? navigated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageStarted value) started,
    required TResult Function(_PageNavigated value) navigated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageStarted value)? started,
    TResult? Function(_PageNavigated value)? navigated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageStarted value)? started,
    TResult Function(_PageNavigated value)? navigated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageEventCopyWith<$Res> {
  factory $PageEventCopyWith(PageEvent value, $Res Function(PageEvent) then) =
      _$PageEventCopyWithImpl<$Res, PageEvent>;
}

/// @nodoc
class _$PageEventCopyWithImpl<$Res, $Val extends PageEvent>
    implements $PageEventCopyWith<$Res> {
  _$PageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PageStartedImplCopyWith<$Res> {
  factory _$$PageStartedImplCopyWith(
          _$PageStartedImpl value, $Res Function(_$PageStartedImpl) then) =
      __$$PageStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PageStartedImplCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$PageStartedImpl>
    implements _$$PageStartedImplCopyWith<$Res> {
  __$$PageStartedImplCopyWithImpl(
      _$PageStartedImpl _value, $Res Function(_$PageStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PageStartedImpl implements _PageStarted {
  const _$PageStartedImpl();

  @override
  String toString() {
    return 'PageEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PageStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? route) navigated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? route)? navigated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? route)? navigated,
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
    required TResult Function(_PageStarted value) started,
    required TResult Function(_PageNavigated value) navigated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageStarted value)? started,
    TResult? Function(_PageNavigated value)? navigated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageStarted value)? started,
    TResult Function(_PageNavigated value)? navigated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _PageStarted implements PageEvent {
  const factory _PageStarted() = _$PageStartedImpl;
}

/// @nodoc
abstract class _$$PageNavigatedImplCopyWith<$Res> {
  factory _$$PageNavigatedImplCopyWith(
          _$PageNavigatedImpl value, $Res Function(_$PageNavigatedImpl) then) =
      __$$PageNavigatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? route});
}

/// @nodoc
class __$$PageNavigatedImplCopyWithImpl<$Res>
    extends _$PageEventCopyWithImpl<$Res, _$PageNavigatedImpl>
    implements _$$PageNavigatedImplCopyWith<$Res> {
  __$$PageNavigatedImplCopyWithImpl(
      _$PageNavigatedImpl _value, $Res Function(_$PageNavigatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? route = freezed,
  }) {
    return _then(_$PageNavigatedImpl(
      freezed == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PageNavigatedImpl implements _PageNavigated {
  const _$PageNavigatedImpl(this.route);

  @override
  final String? route;

  @override
  String toString() {
    return 'PageEvent.navigated(route: $route)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageNavigatedImpl &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageNavigatedImplCopyWith<_$PageNavigatedImpl> get copyWith =>
      __$$PageNavigatedImplCopyWithImpl<_$PageNavigatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? route) navigated,
  }) {
    return navigated(route);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? route)? navigated,
  }) {
    return navigated?.call(route);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? route)? navigated,
    required TResult orElse(),
  }) {
    if (navigated != null) {
      return navigated(route);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageStarted value) started,
    required TResult Function(_PageNavigated value) navigated,
  }) {
    return navigated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageStarted value)? started,
    TResult? Function(_PageNavigated value)? navigated,
  }) {
    return navigated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageStarted value)? started,
    TResult Function(_PageNavigated value)? navigated,
    required TResult orElse(),
  }) {
    if (navigated != null) {
      return navigated(this);
    }
    return orElse();
  }
}

abstract class _PageNavigated implements PageEvent {
  const factory _PageNavigated(final String? route) = _$PageNavigatedImpl;

  String? get route;
  @JsonKey(ignore: true)
  _$$PageNavigatedImplCopyWith<_$PageNavigatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PageState {
  String get current => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String current) view,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String current)? view,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String current)? view,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageViewed value) view,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageViewed value)? view,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageViewed value)? view,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageStateCopyWith<PageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<$Res> {
  factory $PageStateCopyWith(PageState value, $Res Function(PageState) then) =
      _$PageStateCopyWithImpl<$Res, PageState>;
  @useResult
  $Res call({String current});
}

/// @nodoc
class _$PageStateCopyWithImpl<$Res, $Val extends PageState>
    implements $PageStateCopyWith<$Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageViewedImplCopyWith<$Res>
    implements $PageStateCopyWith<$Res> {
  factory _$$PageViewedImplCopyWith(
          _$PageViewedImpl value, $Res Function(_$PageViewedImpl) then) =
      __$$PageViewedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String current});
}

/// @nodoc
class __$$PageViewedImplCopyWithImpl<$Res>
    extends _$PageStateCopyWithImpl<$Res, _$PageViewedImpl>
    implements _$$PageViewedImplCopyWith<$Res> {
  __$$PageViewedImplCopyWithImpl(
      _$PageViewedImpl _value, $Res Function(_$PageViewedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$PageViewedImpl(
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PageViewedImpl implements PageViewed {
  const _$PageViewedImpl(this.current);

  @override
  final String current;

  @override
  String toString() {
    return 'PageState.view(current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageViewedImpl &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageViewedImplCopyWith<_$PageViewedImpl> get copyWith =>
      __$$PageViewedImplCopyWithImpl<_$PageViewedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String current) view,
  }) {
    return view(current);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String current)? view,
  }) {
    return view?.call(current);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String current)? view,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view(current);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageViewed value) view,
  }) {
    return view(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PageViewed value)? view,
  }) {
    return view?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageViewed value)? view,
    required TResult orElse(),
  }) {
    if (view != null) {
      return view(this);
    }
    return orElse();
  }
}

abstract class PageViewed implements PageState {
  const factory PageViewed(final String current) = _$PageViewedImpl;

  @override
  String get current;
  @override
  @JsonKey(ignore: true)
  _$$PageViewedImplCopyWith<_$PageViewedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
