part of 'ddd_logger.dart';

abstract class DomainLogger {
  static Logger entity({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'domain',
        category: 'entity',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'domain',
        category: 'entity',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger value({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'domain',
        category: 'value',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'domain',
        category: 'value',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger factory({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'domain',
        category: 'factory',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'domain',
        category: 'factory',
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
        layer: 'domain',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'domain',
        category: 'util',
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
        layer: 'domain',
        category: 'useCase',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'domain',
        category: 'useCase',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }
}
