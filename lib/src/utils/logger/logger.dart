import 'package:logger/logger.dart';

var _logger = Logger(
    filter: ProductionFilter(),
    printer: PrettyPrinter(
      methodCount: 20, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 5,
      colors: true,
      printEmojis: true,
      noBoxingByDefault: false,
    )
);

logDebug(String? message){
  if(message == null || message.isEmpty) return;
  _logger.d(message);
}

logError({String? errorMessage, Object? error, StackTrace? stackTrace}){
  _logger.e(errorMessage, error: error, stackTrace: stackTrace);
}