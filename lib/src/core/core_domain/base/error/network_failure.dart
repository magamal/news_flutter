part of 'failure.dart';

@freezed
sealed class NetworkFailure with _$NetworkFailure implements Failure {
  const NetworkFailure._();

  factory NetworkFailure.api({String? message, int? statusCode}) = ApiFailure;

  factory NetworkFailure.server({String? message, int? statusCode}) =
      ServerFailure;

  factory NetworkFailure.noInternet(
      {@Default('No internet connection') String message}) = NoInternetFailure;

  factory NetworkFailure.timeout(
      {@Default('Request timed out') String? message}) = TimeoutFailure;

  factory NetworkFailure.unAuthorised(
      {@Default('Unauthorised') String? message}) = UnauthorisedFailure;

  factory NetworkFailure.canceled({String? message}) = CanceledFailure;

  factory NetworkFailure.unknown({String? message}) = UnknownNetworkFailure;
}
