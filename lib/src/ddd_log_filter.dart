part of 'ddd_logger.dart';

class DDDLoggerFilter extends LogFilter {
  DDDLoggerFilter({
    required this.type,
    required this.layer,
    required this.category,
    required this.tags,
    required this.options,
  });

  final Type type;
  final String layer;
  final String category;
  final Set<String> tags;
  final LogOptions options;

  // A convenient flag to hide all logs
  bool get showLogs => options.showLogs;

  @override
  bool shouldLog(LogEvent event) {
    if (!showLogs) return false;
    final shouldLogInclusions = options.includeTags.isEmpty ||
        options.includeTags.intersection({
          layer,
          category,
          type.toString(),
          ...tags,
        }).isNotEmpty;

    final shouldLogExclusions = options.excludeTags.isEmpty ||
        options.excludeTags.intersection({
          layer,
          category,
          type.toString(),
          ...tags,
        }).isEmpty;
    return shouldLogInclusions && shouldLogExclusions;
  }
}
