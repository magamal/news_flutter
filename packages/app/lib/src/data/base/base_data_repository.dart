import 'package:app/generated/l10n.dart';
import 'package:app/src/domain/base/error/failure.dart';
import 'package:app/src/domain/base/success_failure_result.dart';
import 'package:dio/dio.dart';

Failure _mapDioExceptionError(DioException error) {
  switch (error.type) {
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.connectionTimeout:
      return NoInternetFailure(message: S.current.noInternetConnection);
    case DioExceptionType.badResponse:
    case DioExceptionType.unknown:
      // if (error.response?.statusCode != null) {
      //   return networkErrorMapping?.call(error, errorMapping) ??
      //       _defaultNetworkErrorMapping(error, errorMapping);
      // }
      return UnknownFailure(message: S.current.unknownError);
    case DioExceptionType.cancel:
      return CanceledFailure(message: S.current.unknownError);
    case DioExceptionType.badCertificate:
    case DioExceptionType.connectionError:
    case DioExceptionType.sendTimeout:
    default:
      return UnknownFailure(message: S.current.unknownError);
  }
}

Future<SuccessFailureResult<T>> safeCall<T extends Object>(
    Future<T> Function() func) async {
  try {
    final result = await func();
    return SuccessFailureResult.success(result);
  } on DioException catch (e) { // internet
    return SuccessFailureResult.error(_mapDioExceptionError(e));
  } catch (e) { // add database exceptions
    return SuccessFailureResult.error(
        AppFailure.unexpected(message: S.current.unknownError));
  }
}
