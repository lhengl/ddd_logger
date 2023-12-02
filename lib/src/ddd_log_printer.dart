part of 'ddd_logger.dart';

class DDDLogPrinter extends LogPrinter {
  DDDLogPrinter({
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

  @override
  List<String> log(LogEvent event) {
    final layerColor = options.colors[layer];
    final categoryColor = options.colors[category];
    final spectrum = options.colorSpectrum;
    final color = spectrum == 'category' && categoryColor != null
        ? AnsiColor.fg(categoryColor)
        : layerColor != null
            ? AnsiColor.fg(layerColor)
            : PrettyPrinter.levelColors[event.level]!;
    final errorColor = PrettyPrinter.levelColors[Level.error]!;
    final stackTraceColor = PrettyPrinter.levelColors[Level.warning]!;

    final meta = [
      if (options.showLayer) layer,
      if (options.showCategory) category,
      if (options.showType) type.toString(),
    ].join('/');

    var logEntry = meta.isEmpty ? event.message : '[$meta] : ${event.message}';

    if (options.showEmoji) {
      logEntry = PrettyPrinter.levelEmojis[event.level]! + logEntry;
    }

    final tags = this.tags.map((e) => '#$e').join(' ');
    if (options.showTags) {
      logEntry = '$logEntry [$tags]';
    }

    if (event.error != null) {
      final errorEntry = '[Error] : ${event.error}';
      final stackTrace = event.stackTrace;
      final stackEntry = '[Stack Trace] : $stackTrace';
      return [
        options.useColors ? color(logEntry) : logEntry,
        options.useColors ? errorColor(errorEntry) : errorEntry,
        if (stackTrace != null) options.useColors ? stackTraceColor(stackEntry) : stackEntry,
      ];
    }
    return [
      options.useColors ? color(logEntry) : logEntry,
    ];
  }
}
