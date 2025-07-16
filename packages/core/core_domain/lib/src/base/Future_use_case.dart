import 'package:core_domain/src/base/success_failure_result.dart';

abstract class FutureUseCase<T extends Object, P> {
  Future<T> execute({P param});
}

abstract class ResultUseCase<T extends Object, P> {
  Future<SuccessFailureResult<T>> execute({P p});
}
