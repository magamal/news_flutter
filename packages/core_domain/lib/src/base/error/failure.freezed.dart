// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message, List<String>? errors) validation,
    required TResult Function(String? message, String? error) unknownNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function(String? message, List<String>? errors)? validation,
    TResult? Function(String? message, String? error)? unknownNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message, List<String>? errors)? validation,
    TResult Function(String? message, String? error)? unknownNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedAppFailure value) unexpected,
    required TResult Function(ValidationAppFailure value) validation,
    required TResult Function(UnknownFailure value) unknownNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedAppFailure value)? unexpected,
    TResult? Function(ValidationAppFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknownNetwork,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedAppFailure value)? unexpected,
    TResult Function(ValidationAppFailure value)? validation,
    TResult Function(UnknownFailure value)? unknownNetwork,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppFailureCopyWith<AppFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppFailureCopyWith<$Res> {
  factory $AppFailureCopyWith(
          AppFailure value, $Res Function(AppFailure) then) =
      _$AppFailureCopyWithImpl<$Res, AppFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$AppFailureCopyWithImpl<$Res, $Val extends AppFailure>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnexpectedAppFailureImplCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$UnexpectedAppFailureImplCopyWith(_$UnexpectedAppFailureImpl value,
          $Res Function(_$UnexpectedAppFailureImpl) then) =
      __$$UnexpectedAppFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnexpectedAppFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$UnexpectedAppFailureImpl>
    implements _$$UnexpectedAppFailureImplCopyWith<$Res> {
  __$$UnexpectedAppFailureImplCopyWithImpl(_$UnexpectedAppFailureImpl _value,
      $Res Function(_$UnexpectedAppFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnexpectedAppFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnexpectedAppFailureImpl implements UnexpectedAppFailure {
  const _$UnexpectedAppFailureImpl(
      {this.message = 'An unexpected error occurred'});

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'AppFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedAppFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedAppFailureImplCopyWith<_$UnexpectedAppFailureImpl>
      get copyWith =>
          __$$UnexpectedAppFailureImplCopyWithImpl<_$UnexpectedAppFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message, List<String>? errors) validation,
    required TResult Function(String? message, String? error) unknownNetwork,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function(String? message, List<String>? errors)? validation,
    TResult? Function(String? message, String? error)? unknownNetwork,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message, List<String>? errors)? validation,
    TResult Function(String? message, String? error)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedAppFailure value) unexpected,
    required TResult Function(ValidationAppFailure value) validation,
    required TResult Function(UnknownFailure value) unknownNetwork,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedAppFailure value)? unexpected,
    TResult? Function(ValidationAppFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknownNetwork,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedAppFailure value)? unexpected,
    TResult Function(ValidationAppFailure value)? validation,
    TResult Function(UnknownFailure value)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedAppFailure implements AppFailure {
  const factory UnexpectedAppFailure({final String? message}) =
      _$UnexpectedAppFailureImpl;

  @override
  String? get message;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedAppFailureImplCopyWith<_$UnexpectedAppFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidationAppFailureImplCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$ValidationAppFailureImplCopyWith(_$ValidationAppFailureImpl value,
          $Res Function(_$ValidationAppFailureImpl) then) =
      __$$ValidationAppFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<String>? errors});
}

/// @nodoc
class __$$ValidationAppFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$ValidationAppFailureImpl>
    implements _$$ValidationAppFailureImplCopyWith<$Res> {
  __$$ValidationAppFailureImplCopyWithImpl(_$ValidationAppFailureImpl _value,
      $Res Function(_$ValidationAppFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ValidationAppFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$ValidationAppFailureImpl implements ValidationAppFailure {
  const _$ValidationAppFailureImpl(
      {this.message = 'Validation failed', final List<String>? errors})
      : _errors = errors;

  @override
  @JsonKey()
  final String? message;
  final List<String>? _errors;
  @override
  List<String>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppFailure.validation(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationAppFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_errors));

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationAppFailureImplCopyWith<_$ValidationAppFailureImpl>
      get copyWith =>
          __$$ValidationAppFailureImplCopyWithImpl<_$ValidationAppFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message, List<String>? errors) validation,
    required TResult Function(String? message, String? error) unknownNetwork,
  }) {
    return validation(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function(String? message, List<String>? errors)? validation,
    TResult? Function(String? message, String? error)? unknownNetwork,
  }) {
    return validation?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message, List<String>? errors)? validation,
    TResult Function(String? message, String? error)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedAppFailure value) unexpected,
    required TResult Function(ValidationAppFailure value) validation,
    required TResult Function(UnknownFailure value) unknownNetwork,
  }) {
    return validation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedAppFailure value)? unexpected,
    TResult? Function(ValidationAppFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknownNetwork,
  }) {
    return validation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedAppFailure value)? unexpected,
    TResult Function(ValidationAppFailure value)? validation,
    TResult Function(UnknownFailure value)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class ValidationAppFailure implements AppFailure {
  const factory ValidationAppFailure(
      {final String? message,
      final List<String>? errors}) = _$ValidationAppFailureImpl;

  @override
  String? get message;
  List<String>? get errors;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationAppFailureImplCopyWith<_$ValidationAppFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownFailureImplCopyWith<$Res>
    implements $AppFailureCopyWith<$Res> {
  factory _$$UnknownFailureImplCopyWith(_$UnknownFailureImpl value,
          $Res Function(_$UnknownFailureImpl) then) =
      __$$UnknownFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? error});
}

/// @nodoc
class __$$UnknownFailureImplCopyWithImpl<$Res>
    extends _$AppFailureCopyWithImpl<$Res, _$UnknownFailureImpl>
    implements _$$UnknownFailureImplCopyWith<$Res> {
  __$$UnknownFailureImplCopyWithImpl(
      _$UnknownFailureImpl _value, $Res Function(_$UnknownFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UnknownFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownFailureImpl implements UnknownFailure {
  const _$UnknownFailureImpl({this.message, this.error});

  @override
  final String? message;
  @override
  final String? error;

  @override
  String toString() {
    return 'AppFailure.unknownNetwork(message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, error);

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      __$$UnknownFailureImplCopyWithImpl<_$UnknownFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unexpected,
    required TResult Function(String? message, List<String>? errors) validation,
    required TResult Function(String? message, String? error) unknownNetwork,
  }) {
    return unknownNetwork(message, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? unexpected,
    TResult? Function(String? message, List<String>? errors)? validation,
    TResult? Function(String? message, String? error)? unknownNetwork,
  }) {
    return unknownNetwork?.call(message, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unexpected,
    TResult Function(String? message, List<String>? errors)? validation,
    TResult Function(String? message, String? error)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (unknownNetwork != null) {
      return unknownNetwork(message, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedAppFailure value) unexpected,
    required TResult Function(ValidationAppFailure value) validation,
    required TResult Function(UnknownFailure value) unknownNetwork,
  }) {
    return unknownNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedAppFailure value)? unexpected,
    TResult? Function(ValidationAppFailure value)? validation,
    TResult? Function(UnknownFailure value)? unknownNetwork,
  }) {
    return unknownNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedAppFailure value)? unexpected,
    TResult Function(ValidationAppFailure value)? validation,
    TResult Function(UnknownFailure value)? unknownNetwork,
    required TResult orElse(),
  }) {
    if (unknownNetwork != null) {
      return unknownNetwork(this);
    }
    return orElse();
  }
}

abstract class UnknownFailure implements AppFailure {
  const factory UnknownFailure({final String? message, final String? error}) =
      _$UnknownFailureImpl;

  @override
  String? get message;
  String? get error;

  /// Create a copy of AppFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownFailureImplCopyWith<_$UnknownFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NetworkFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res, NetworkFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res, $Val extends NetworkFailure>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message!
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ApiFailureImplCopyWith(
          _$ApiFailureImpl value, $Res Function(_$ApiFailureImpl) then) =
      __$$ApiFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, int? statusCode});
}

/// @nodoc
class __$$ApiFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ApiFailureImpl>
    implements _$$ApiFailureImplCopyWith<$Res> {
  __$$ApiFailureImplCopyWithImpl(
      _$ApiFailureImpl _value, $Res Function(_$ApiFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ApiFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ApiFailureImpl extends ApiFailure {
  _$ApiFailureImpl({this.message, this.statusCode}) : super._();

  @override
  final String? message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'NetworkFailure.api(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      __$$ApiFailureImplCopyWithImpl<_$ApiFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return api(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return api?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return api(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return api?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (api != null) {
      return api(this);
    }
    return orElse();
  }
}

abstract class ApiFailure extends NetworkFailure {
  factory ApiFailure({final String? message, final int? statusCode}) =
      _$ApiFailureImpl;
  ApiFailure._() : super._();

  @override
  String? get message;
  int? get statusCode;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, int? statusCode});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? statusCode = freezed,
  }) {
    return _then(_$ServerFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl extends ServerFailure {
  _$ServerFailureImpl({this.message, this.statusCode}) : super._();

  @override
  final String? message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'NetworkFailure.server(message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return server(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return server?.call(message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class ServerFailure extends NetworkFailure {
  factory ServerFailure({final String? message, final int? statusCode}) =
      _$ServerFailureImpl;
  ServerFailure._() : super._();

  @override
  String? get message;
  int? get statusCode;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$NoInternetFailureImplCopyWith(_$NoInternetFailureImpl value,
          $Res Function(_$NoInternetFailureImpl) then) =
      __$$NoInternetFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NoInternetFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$NoInternetFailureImpl>
    implements _$$NoInternetFailureImplCopyWith<$Res> {
  __$$NoInternetFailureImplCopyWithImpl(_$NoInternetFailureImpl _value,
      $Res Function(_$NoInternetFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NoInternetFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoInternetFailureImpl extends NoInternetFailure {
  _$NoInternetFailureImpl({this.message = 'No internet connection'})
      : super._();

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'NetworkFailure.noInternet(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith =>
      __$$NoInternetFailureImplCopyWithImpl<_$NoInternetFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return noInternet(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return noInternet?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternetFailure extends NetworkFailure {
  factory NoInternetFailure({final String message}) = _$NoInternetFailureImpl;
  NoInternetFailure._() : super._();

  @override
  String get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoInternetFailureImplCopyWith<_$NoInternetFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimeoutFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$TimeoutFailureImplCopyWith(_$TimeoutFailureImpl value,
          $Res Function(_$TimeoutFailureImpl) then) =
      __$$TimeoutFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$TimeoutFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$TimeoutFailureImpl>
    implements _$$TimeoutFailureImplCopyWith<$Res> {
  __$$TimeoutFailureImplCopyWithImpl(
      _$TimeoutFailureImpl _value, $Res Function(_$TimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$TimeoutFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TimeoutFailureImpl extends TimeoutFailure {
  _$TimeoutFailureImpl({this.message = 'Request timed out'}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.timeout(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeoutFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      __$$TimeoutFailureImplCopyWithImpl<_$TimeoutFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return timeout(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return timeout?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutFailure extends NetworkFailure {
  factory TimeoutFailure({final String? message}) = _$TimeoutFailureImpl;
  TimeoutFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeoutFailureImplCopyWith<_$TimeoutFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorisedFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnauthorisedFailureImplCopyWith(_$UnauthorisedFailureImpl value,
          $Res Function(_$UnauthorisedFailureImpl) then) =
      __$$UnauthorisedFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorisedFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnauthorisedFailureImpl>
    implements _$$UnauthorisedFailureImplCopyWith<$Res> {
  __$$UnauthorisedFailureImplCopyWithImpl(_$UnauthorisedFailureImpl _value,
      $Res Function(_$UnauthorisedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthorisedFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorisedFailureImpl extends UnauthorisedFailure {
  _$UnauthorisedFailureImpl({this.message = 'Unauthorised'}) : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.unAuthorised(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorisedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorisedFailureImplCopyWith<_$UnauthorisedFailureImpl> get copyWith =>
      __$$UnauthorisedFailureImplCopyWithImpl<_$UnauthorisedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return unAuthorised(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return unAuthorised?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unAuthorised != null) {
      return unAuthorised(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return unAuthorised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return unAuthorised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unAuthorised != null) {
      return unAuthorised(this);
    }
    return orElse();
  }
}

abstract class UnauthorisedFailure extends NetworkFailure {
  factory UnauthorisedFailure({final String? message}) =
      _$UnauthorisedFailureImpl;
  UnauthorisedFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorisedFailureImplCopyWith<_$UnauthorisedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanceledFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$CanceledFailureImplCopyWith(_$CanceledFailureImpl value,
          $Res Function(_$CanceledFailureImpl) then) =
      __$$CanceledFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CanceledFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$CanceledFailureImpl>
    implements _$$CanceledFailureImplCopyWith<$Res> {
  __$$CanceledFailureImplCopyWithImpl(
      _$CanceledFailureImpl _value, $Res Function(_$CanceledFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CanceledFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CanceledFailureImpl extends CanceledFailure {
  _$CanceledFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.canceled(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanceledFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CanceledFailureImplCopyWith<_$CanceledFailureImpl> get copyWith =>
      __$$CanceledFailureImplCopyWithImpl<_$CanceledFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return canceled(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return canceled?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return canceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return canceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (canceled != null) {
      return canceled(this);
    }
    return orElse();
  }
}

abstract class CanceledFailure extends NetworkFailure {
  factory CanceledFailure({final String? message}) = _$CanceledFailureImpl;
  CanceledFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CanceledFailureImplCopyWith<_$CanceledFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownNetworkFailureImplCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory _$$UnknownNetworkFailureImplCopyWith(
          _$UnknownNetworkFailureImpl value,
          $Res Function(_$UnknownNetworkFailureImpl) then) =
      __$$UnknownNetworkFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownNetworkFailureImplCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res, _$UnknownNetworkFailureImpl>
    implements _$$UnknownNetworkFailureImplCopyWith<$Res> {
  __$$UnknownNetworkFailureImplCopyWithImpl(_$UnknownNetworkFailureImpl _value,
      $Res Function(_$UnknownNetworkFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownNetworkFailureImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownNetworkFailureImpl extends UnknownNetworkFailure {
  _$UnknownNetworkFailureImpl({this.message}) : super._();

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownNetworkFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownNetworkFailureImplCopyWith<_$UnknownNetworkFailureImpl>
      get copyWith => __$$UnknownNetworkFailureImplCopyWithImpl<
          _$UnknownNetworkFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message, int? statusCode) api,
    required TResult Function(String? message, int? statusCode) server,
    required TResult Function(String message) noInternet,
    required TResult Function(String? message) timeout,
    required TResult Function(String? message) unAuthorised,
    required TResult Function(String? message) canceled,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message, int? statusCode)? api,
    TResult? Function(String? message, int? statusCode)? server,
    TResult? Function(String message)? noInternet,
    TResult? Function(String? message)? timeout,
    TResult? Function(String? message)? unAuthorised,
    TResult? Function(String? message)? canceled,
    TResult? Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, int? statusCode)? api,
    TResult Function(String? message, int? statusCode)? server,
    TResult Function(String message)? noInternet,
    TResult Function(String? message)? timeout,
    TResult Function(String? message)? unAuthorised,
    TResult Function(String? message)? canceled,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApiFailure value) api,
    required TResult Function(ServerFailure value) server,
    required TResult Function(NoInternetFailure value) noInternet,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(UnauthorisedFailure value) unAuthorised,
    required TResult Function(CanceledFailure value) canceled,
    required TResult Function(UnknownNetworkFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApiFailure value)? api,
    TResult? Function(ServerFailure value)? server,
    TResult? Function(NoInternetFailure value)? noInternet,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(UnauthorisedFailure value)? unAuthorised,
    TResult? Function(CanceledFailure value)? canceled,
    TResult? Function(UnknownNetworkFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApiFailure value)? api,
    TResult Function(ServerFailure value)? server,
    TResult Function(NoInternetFailure value)? noInternet,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(UnauthorisedFailure value)? unAuthorised,
    TResult Function(CanceledFailure value)? canceled,
    TResult Function(UnknownNetworkFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownNetworkFailure extends NetworkFailure {
  factory UnknownNetworkFailure({final String? message}) =
      _$UnknownNetworkFailureImpl;
  UnknownNetworkFailure._() : super._();

  @override
  String? get message;

  /// Create a copy of NetworkFailure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnknownNetworkFailureImplCopyWith<_$UnknownNetworkFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
