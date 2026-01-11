// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppFailure {

 String? get message;
/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppFailureCopyWith<AppFailure> get copyWith => _$AppFailureCopyWithImpl<AppFailure>(this as AppFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $AppFailureCopyWith<$Res>  {
  factory $AppFailureCopyWith(AppFailure value, $Res Function(AppFailure) _then) = _$AppFailureCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$AppFailureCopyWithImpl<$Res>
    implements $AppFailureCopyWith<$Res> {
  _$AppFailureCopyWithImpl(this._self, this._then);

  final AppFailure _self;
  final $Res Function(AppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppFailure].
extension AppFailurePatterns on AppFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnexpectedAppFailure value)?  unexpected,TResult Function( ValidationAppFailure value)?  validation,TResult Function( UnknownFailure value)?  unknownNetwork,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnexpectedAppFailure() when unexpected != null:
return unexpected(_that);case ValidationAppFailure() when validation != null:
return validation(_that);case UnknownFailure() when unknownNetwork != null:
return unknownNetwork(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnexpectedAppFailure value)  unexpected,required TResult Function( ValidationAppFailure value)  validation,required TResult Function( UnknownFailure value)  unknownNetwork,}){
final _that = this;
switch (_that) {
case UnexpectedAppFailure():
return unexpected(_that);case ValidationAppFailure():
return validation(_that);case UnknownFailure():
return unknownNetwork(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnexpectedAppFailure value)?  unexpected,TResult? Function( ValidationAppFailure value)?  validation,TResult? Function( UnknownFailure value)?  unknownNetwork,}){
final _that = this;
switch (_that) {
case UnexpectedAppFailure() when unexpected != null:
return unexpected(_that);case ValidationAppFailure() when validation != null:
return validation(_that);case UnknownFailure() when unknownNetwork != null:
return unknownNetwork(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message)?  unexpected,TResult Function( String? message,  List<String>? errors)?  validation,TResult Function( String? message,  String? error)?  unknownNetwork,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnexpectedAppFailure() when unexpected != null:
return unexpected(_that.message);case ValidationAppFailure() when validation != null:
return validation(_that.message,_that.errors);case UnknownFailure() when unknownNetwork != null:
return unknownNetwork(_that.message,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message)  unexpected,required TResult Function( String? message,  List<String>? errors)  validation,required TResult Function( String? message,  String? error)  unknownNetwork,}) {final _that = this;
switch (_that) {
case UnexpectedAppFailure():
return unexpected(_that.message);case ValidationAppFailure():
return validation(_that.message,_that.errors);case UnknownFailure():
return unknownNetwork(_that.message,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message)?  unexpected,TResult? Function( String? message,  List<String>? errors)?  validation,TResult? Function( String? message,  String? error)?  unknownNetwork,}) {final _that = this;
switch (_that) {
case UnexpectedAppFailure() when unexpected != null:
return unexpected(_that.message);case ValidationAppFailure() when validation != null:
return validation(_that.message,_that.errors);case UnknownFailure() when unknownNetwork != null:
return unknownNetwork(_that.message,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class UnexpectedAppFailure implements AppFailure {
  const UnexpectedAppFailure({this.message = 'An unexpected error occurred'});
  

@override@JsonKey() final  String? message;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnexpectedAppFailureCopyWith<UnexpectedAppFailure> get copyWith => _$UnexpectedAppFailureCopyWithImpl<UnexpectedAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedAppFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AppFailure.unexpected(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnexpectedAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $UnexpectedAppFailureCopyWith(UnexpectedAppFailure value, $Res Function(UnexpectedAppFailure) _then) = _$UnexpectedAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnexpectedAppFailureCopyWithImpl<$Res>
    implements $UnexpectedAppFailureCopyWith<$Res> {
  _$UnexpectedAppFailureCopyWithImpl(this._self, this._then);

  final UnexpectedAppFailure _self;
  final $Res Function(UnexpectedAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnexpectedAppFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ValidationAppFailure implements AppFailure {
  const ValidationAppFailure({this.message = 'Validation failed', final  List<String>? errors}): _errors = errors;
  

@override@JsonKey() final  String? message;
 final  List<String>? _errors;
 List<String>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ValidationAppFailureCopyWith<ValidationAppFailure> get copyWith => _$ValidationAppFailureCopyWithImpl<ValidationAppFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValidationAppFailure&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'AppFailure.validation(message: $message, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $ValidationAppFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $ValidationAppFailureCopyWith(ValidationAppFailure value, $Res Function(ValidationAppFailure) _then) = _$ValidationAppFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, List<String>? errors
});




}
/// @nodoc
class _$ValidationAppFailureCopyWithImpl<$Res>
    implements $ValidationAppFailureCopyWith<$Res> {
  _$ValidationAppFailureCopyWithImpl(this._self, this._then);

  final ValidationAppFailure _self;
  final $Res Function(ValidationAppFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? errors = freezed,}) {
  return _then(ValidationAppFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc


class UnknownFailure implements AppFailure {
  const UnknownFailure({this.message, this.error});
  

@override final  String? message;
 final  String? error;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownFailureCopyWith<UnknownFailure> get copyWith => _$UnknownFailureCopyWithImpl<UnknownFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,message,error);

@override
String toString() {
  return 'AppFailure.unknownNetwork(message: $message, error: $error)';
}


}

/// @nodoc
abstract mixin class $UnknownFailureCopyWith<$Res> implements $AppFailureCopyWith<$Res> {
  factory $UnknownFailureCopyWith(UnknownFailure value, $Res Function(UnknownFailure) _then) = _$UnknownFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? error
});




}
/// @nodoc
class _$UnknownFailureCopyWithImpl<$Res>
    implements $UnknownFailureCopyWith<$Res> {
  _$UnknownFailureCopyWithImpl(this._self, this._then);

  final UnknownFailure _self;
  final $Res Function(UnknownFailure) _then;

/// Create a copy of AppFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? error = freezed,}) {
  return _then(UnknownFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$NetworkFailure {

 String? get message;
/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NetworkFailureCopyWith<NetworkFailure> get copyWith => _$NetworkFailureCopyWithImpl<NetworkFailure>(this as NetworkFailure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $NetworkFailureCopyWith<$Res>  {
  factory $NetworkFailureCopyWith(NetworkFailure value, $Res Function(NetworkFailure) _then) = _$NetworkFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._self, this._then);

  final NetworkFailure _self;
  final $Res Function(NetworkFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message! : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NetworkFailure].
extension NetworkFailurePatterns on NetworkFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ApiFailure value)?  api,TResult Function( ServerFailure value)?  server,TResult Function( NoInternetFailure value)?  noInternet,TResult Function( TimeoutFailure value)?  timeout,TResult Function( UnauthorisedFailure value)?  unAuthorised,TResult Function( CanceledFailure value)?  canceled,TResult Function( UnknownNetworkFailure value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ApiFailure() when api != null:
return api(_that);case ServerFailure() when server != null:
return server(_that);case NoInternetFailure() when noInternet != null:
return noInternet(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case UnauthorisedFailure() when unAuthorised != null:
return unAuthorised(_that);case CanceledFailure() when canceled != null:
return canceled(_that);case UnknownNetworkFailure() when unknown != null:
return unknown(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ApiFailure value)  api,required TResult Function( ServerFailure value)  server,required TResult Function( NoInternetFailure value)  noInternet,required TResult Function( TimeoutFailure value)  timeout,required TResult Function( UnauthorisedFailure value)  unAuthorised,required TResult Function( CanceledFailure value)  canceled,required TResult Function( UnknownNetworkFailure value)  unknown,}){
final _that = this;
switch (_that) {
case ApiFailure():
return api(_that);case ServerFailure():
return server(_that);case NoInternetFailure():
return noInternet(_that);case TimeoutFailure():
return timeout(_that);case UnauthorisedFailure():
return unAuthorised(_that);case CanceledFailure():
return canceled(_that);case UnknownNetworkFailure():
return unknown(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ApiFailure value)?  api,TResult? Function( ServerFailure value)?  server,TResult? Function( NoInternetFailure value)?  noInternet,TResult? Function( TimeoutFailure value)?  timeout,TResult? Function( UnauthorisedFailure value)?  unAuthorised,TResult? Function( CanceledFailure value)?  canceled,TResult? Function( UnknownNetworkFailure value)?  unknown,}){
final _that = this;
switch (_that) {
case ApiFailure() when api != null:
return api(_that);case ServerFailure() when server != null:
return server(_that);case NoInternetFailure() when noInternet != null:
return noInternet(_that);case TimeoutFailure() when timeout != null:
return timeout(_that);case UnauthorisedFailure() when unAuthorised != null:
return unAuthorised(_that);case CanceledFailure() when canceled != null:
return canceled(_that);case UnknownNetworkFailure() when unknown != null:
return unknown(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? message,  int? statusCode)?  api,TResult Function( String? message,  int? statusCode)?  server,TResult Function( String message)?  noInternet,TResult Function( String? message)?  timeout,TResult Function( String? message)?  unAuthorised,TResult Function( String? message)?  canceled,TResult Function( String? message)?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ApiFailure() when api != null:
return api(_that.message,_that.statusCode);case ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case NoInternetFailure() when noInternet != null:
return noInternet(_that.message);case TimeoutFailure() when timeout != null:
return timeout(_that.message);case UnauthorisedFailure() when unAuthorised != null:
return unAuthorised(_that.message);case CanceledFailure() when canceled != null:
return canceled(_that.message);case UnknownNetworkFailure() when unknown != null:
return unknown(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? message,  int? statusCode)  api,required TResult Function( String? message,  int? statusCode)  server,required TResult Function( String message)  noInternet,required TResult Function( String? message)  timeout,required TResult Function( String? message)  unAuthorised,required TResult Function( String? message)  canceled,required TResult Function( String? message)  unknown,}) {final _that = this;
switch (_that) {
case ApiFailure():
return api(_that.message,_that.statusCode);case ServerFailure():
return server(_that.message,_that.statusCode);case NoInternetFailure():
return noInternet(_that.message);case TimeoutFailure():
return timeout(_that.message);case UnauthorisedFailure():
return unAuthorised(_that.message);case CanceledFailure():
return canceled(_that.message);case UnknownNetworkFailure():
return unknown(_that.message);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? message,  int? statusCode)?  api,TResult? Function( String? message,  int? statusCode)?  server,TResult? Function( String message)?  noInternet,TResult? Function( String? message)?  timeout,TResult? Function( String? message)?  unAuthorised,TResult? Function( String? message)?  canceled,TResult? Function( String? message)?  unknown,}) {final _that = this;
switch (_that) {
case ApiFailure() when api != null:
return api(_that.message,_that.statusCode);case ServerFailure() when server != null:
return server(_that.message,_that.statusCode);case NoInternetFailure() when noInternet != null:
return noInternet(_that.message);case TimeoutFailure() when timeout != null:
return timeout(_that.message);case UnauthorisedFailure() when unAuthorised != null:
return unAuthorised(_that.message);case CanceledFailure() when canceled != null:
return canceled(_that.message);case UnknownNetworkFailure() when unknown != null:
return unknown(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ApiFailure extends NetworkFailure {
   ApiFailure({this.message, this.statusCode}): super._();
  

@override final  String? message;
 final  int? statusCode;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ApiFailureCopyWith<ApiFailure> get copyWith => _$ApiFailureCopyWithImpl<ApiFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ApiFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'NetworkFailure.api(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $ApiFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(ApiFailure value, $Res Function(ApiFailure) _then) = _$ApiFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, int? statusCode
});




}
/// @nodoc
class _$ApiFailureCopyWithImpl<$Res>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._self, this._then);

  final ApiFailure _self;
  final $Res Function(ApiFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(ApiFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class ServerFailure extends NetworkFailure {
   ServerFailure({this.message, this.statusCode}): super._();
  

@override final  String? message;
 final  int? statusCode;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerFailureCopyWith<ServerFailure> get copyWith => _$ServerFailureCopyWithImpl<ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,message,statusCode);

@override
String toString() {
  return 'NetworkFailure.server(message: $message, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $ServerFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $ServerFailureCopyWith(ServerFailure value, $Res Function(ServerFailure) _then) = _$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message, int? statusCode
});




}
/// @nodoc
class _$ServerFailureCopyWithImpl<$Res>
    implements $ServerFailureCopyWith<$Res> {
  _$ServerFailureCopyWithImpl(this._self, this._then);

  final ServerFailure _self;
  final $Res Function(ServerFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? statusCode = freezed,}) {
  return _then(ServerFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class NoInternetFailure extends NetworkFailure {
   NoInternetFailure({this.message = 'No internet connection'}): super._();
  

@override@JsonKey() final  String message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoInternetFailureCopyWith<NoInternetFailure> get copyWith => _$NoInternetFailureCopyWithImpl<NoInternetFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.noInternet(message: $message)';
}


}

/// @nodoc
abstract mixin class $NoInternetFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $NoInternetFailureCopyWith(NoInternetFailure value, $Res Function(NoInternetFailure) _then) = _$NoInternetFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NoInternetFailureCopyWithImpl<$Res>
    implements $NoInternetFailureCopyWith<$Res> {
  _$NoInternetFailureCopyWithImpl(this._self, this._then);

  final NoInternetFailure _self;
  final $Res Function(NoInternetFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NoInternetFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TimeoutFailure extends NetworkFailure {
   TimeoutFailure({this.message = 'Request timed out'}): super._();
  

@override@JsonKey() final  String? message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeoutFailureCopyWith<TimeoutFailure> get copyWith => _$TimeoutFailureCopyWithImpl<TimeoutFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeoutFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.timeout(message: $message)';
}


}

/// @nodoc
abstract mixin class $TimeoutFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $TimeoutFailureCopyWith(TimeoutFailure value, $Res Function(TimeoutFailure) _then) = _$TimeoutFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TimeoutFailureCopyWithImpl<$Res>
    implements $TimeoutFailureCopyWith<$Res> {
  _$TimeoutFailureCopyWithImpl(this._self, this._then);

  final TimeoutFailure _self;
  final $Res Function(TimeoutFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TimeoutFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnauthorisedFailure extends NetworkFailure {
   UnauthorisedFailure({this.message = 'Unauthorised'}): super._();
  

@override@JsonKey() final  String? message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorisedFailureCopyWith<UnauthorisedFailure> get copyWith => _$UnauthorisedFailureCopyWithImpl<UnauthorisedFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorisedFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.unAuthorised(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnauthorisedFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $UnauthorisedFailureCopyWith(UnauthorisedFailure value, $Res Function(UnauthorisedFailure) _then) = _$UnauthorisedFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnauthorisedFailureCopyWithImpl<$Res>
    implements $UnauthorisedFailureCopyWith<$Res> {
  _$UnauthorisedFailureCopyWithImpl(this._self, this._then);

  final UnauthorisedFailure _self;
  final $Res Function(UnauthorisedFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnauthorisedFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CanceledFailure extends NetworkFailure {
   CanceledFailure({this.message}): super._();
  

@override final  String? message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CanceledFailureCopyWith<CanceledFailure> get copyWith => _$CanceledFailureCopyWithImpl<CanceledFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CanceledFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.canceled(message: $message)';
}


}

/// @nodoc
abstract mixin class $CanceledFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $CanceledFailureCopyWith(CanceledFailure value, $Res Function(CanceledFailure) _then) = _$CanceledFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$CanceledFailureCopyWithImpl<$Res>
    implements $CanceledFailureCopyWith<$Res> {
  _$CanceledFailureCopyWithImpl(this._self, this._then);

  final CanceledFailure _self;
  final $Res Function(CanceledFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(CanceledFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class UnknownNetworkFailure extends NetworkFailure {
   UnknownNetworkFailure({this.message}): super._();
  

@override final  String? message;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnknownNetworkFailureCopyWith<UnknownNetworkFailure> get copyWith => _$UnknownNetworkFailureCopyWithImpl<UnknownNetworkFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownNetworkFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'NetworkFailure.unknown(message: $message)';
}


}

/// @nodoc
abstract mixin class $UnknownNetworkFailureCopyWith<$Res> implements $NetworkFailureCopyWith<$Res> {
  factory $UnknownNetworkFailureCopyWith(UnknownNetworkFailure value, $Res Function(UnknownNetworkFailure) _then) = _$UnknownNetworkFailureCopyWithImpl;
@override @useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$UnknownNetworkFailureCopyWithImpl<$Res>
    implements $UnknownNetworkFailureCopyWith<$Res> {
  _$UnknownNetworkFailureCopyWithImpl(this._self, this._then);

  final UnknownNetworkFailure _self;
  final $Res Function(UnknownNetworkFailure) _then;

/// Create a copy of NetworkFailure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(UnknownNetworkFailure(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
