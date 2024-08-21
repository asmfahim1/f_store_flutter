import 'package:logger/logger.dart';

class FLoggerHelper {
  static final Logger _logger = Logger(
    level: Level.debug,
    printer: PrettyPrinter(),
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void errror(String message, [dynamic error]) {
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}
