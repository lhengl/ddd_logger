part of 'ddd_logger.dart';

abstract class InfrastructureLogger {
  static Logger model({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'infrastructure',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'infrastructure',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger mapper({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'infrastructure',
        category: 'mapper',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'infrastructure',
        category: 'mapper',
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
        layer: 'infrastructure',
        category: 'repo',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'infrastructure',
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
        layer: 'infrastructure',
        category: 'service',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'infrastructure',
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
        layer: 'infrastructure',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'infrastructure',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }
}
