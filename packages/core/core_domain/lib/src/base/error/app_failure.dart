part of 'failure.dart';

@freezed
class AppFailure with _$AppFailure implements Failure {
  const factory AppFailure.unexpected(
          {@Default('An unexpected error occurred') String? message}) =
      UnexpectedAppFailure;
  const factory AppFailure.validation(
      {@Default('Validation failed') String? message,
      List<String>? errors}) = ValidationAppFailure;
  const factory AppFailure.unknownNetwork({String? message, String? error}) =
      UnknownFailure;
}
