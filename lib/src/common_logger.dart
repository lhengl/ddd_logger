part of 'ddd_logger.dart';

abstract class CommonLogger {
  static Logger value({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'common',
        category: 'value',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'common',
        category: 'value',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger model({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'common',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'common',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger util({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'common',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'common',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }
}
