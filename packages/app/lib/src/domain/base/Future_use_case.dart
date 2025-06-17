import 'package:app/src/domain/base/error/failure.dart';
import 'package:app/src/domain/base/success_failure_result.dart';

abstract class FutureUseCase<T extends Object, P> {
  Future<T> execute({P param});
}

abstract class ResultUseCase<T extends Object, P> {
  Future<SuccessFailureResult<T>> execute({P p});
}
