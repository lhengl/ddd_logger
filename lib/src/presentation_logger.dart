part of 'ddd_logger.dart';

abstract class PresentationLogger {
  static Logger model({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'presentation',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'presentation',
        category: 'model',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger controller({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'presentation',
        category: 'controller',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'presentation',
        category: 'controller',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }

  static Logger view({
    required Type type,
    Set<String> tags = const {},
    LogOptions? options,
    LogOutput? output,
  }) {
    return Logger(
      printer: DDDLogPrinter(
        type: type,
        layer: 'presentation',
        category: 'view',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'presentation',
        category: 'view',
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
        layer: 'presentation',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      filter: DDDLoggerFilter(
        type: type,
        layer: 'presentation',
        category: 'util',
        tags: tags,
        options: options ?? DDDLogger.globalOptions,
      ),
      output: output ?? DDDLogger.globalOutput,
    );
  }
}
