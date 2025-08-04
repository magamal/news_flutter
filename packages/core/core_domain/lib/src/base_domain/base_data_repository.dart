import 'package:core_domain/src/base/error/index.dart';
import 'package:dio/dio.dart';
import 'package:localization/generated/l10n.dart';

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

Future<T> safeCall<T extends Object>(Future<T> Function() func) async {
  try {
    final result = await func();
    return result;
  } on DioException catch (e) {
    throw _mapDioExceptionError(e);
  } catch (e) {
    throw AppFailure.unexpected(message: S.current.unknownError);
  }
}