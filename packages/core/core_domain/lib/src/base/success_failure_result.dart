import 'package:freezed_annotation/freezed_annotation.dart';

import 'error/index.dart';

part 'success_failure_result.freezed.dart';

@freezed
sealed class SuccessFailureResult<T extends Object>
    with _$SuccessFailureResult {

  const factory SuccessFailureResult.success(T result) = Success<T>;

  const factory SuccessFailureResult.error(Failure error) = Error<T>;

  /// Executes the appropriate function based on whether the result is a success or a failure.
  ///
  /// - [success]: The function to execute if the result is a [ResultSuccess].
  /// - [failure]: The function to execute if the result is a [ResultFailure].
  ///
  /// Returns the result of the executed function.
  @override
  R when<R>({
    required R Function(T result) success,
    required R Function(Failure error) error,
  }) {
    switch (this) {
      case Success<T>():
        return success(this as T);
      case Error():
        return error(this as Failure);
    }
  }
}
