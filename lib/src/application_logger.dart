part of 'ddd_logger.dart';

abstract class ApplicationLogger {
  static Logger model({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'application',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger repo({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'application',
        category: 'repo',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'repo',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger service({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'application',
        category: 'service',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'service',
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
        layer: 'application',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger query({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'application',
        category: 'query',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'query',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger useCase({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'application',
        category: 'useCase',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'application',
        category: 'useCase',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }
}
