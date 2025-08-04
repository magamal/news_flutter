// failure.dart

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.dart';
part 'failure.freezed.dart';
part 'network_failure.dart';

/// Base class representing a failure in the application.
/// All specific failure types should extend this class.
abstract class Failure implements Exception {
  /// A descriptive message about the failure.
  final String? message;

  const Failure({this.message});
}

extension FailureX on Failure {
  /// Returns true if the failure is a network failure.
  bool get isNetworkFailure => this is NetworkFailure;

  /// Returns true if the failure is an application failure.
  bool get isAppFailure => this is AppFailure;

  /// Executes the appropriate function based on the failure type.
  ///
  /// - [network]: Function to execute if the failure is a [NetworkFailure].
  /// - [app]: Function to execute if the failure is an [AppFailure].
  ///
  /// Throws an exception if the failure type is unrecognized.
  R when<R>({
    required R Function(NetworkFailure) network,
    required R Function(AppFailure) app,
  }) {
    if (this is NetworkFailure) {
      return network(this as NetworkFailure);
    } else if (this is AppFailure) {
      return app(this as AppFailure);
    } else {
      throw Exception('Unknown failure type: $this');
    }
  }
}


