part of '../ddd_logger.dart';

class DddLogPrinter<T> extends LogPrinter {
  DddLogPrinter({
    required this.layer,
    required this.category,
    required this.tags,
    this.color,
  });

  final LogLayer layer;
  final LogCategory category;
  final Set<String> tags;
  final AnsiColor? color;

  // Flag to show or hide log id info

  bool get showLayer => LogConfig.instance.display.showLayer;
  bool get showCategory => LogConfig.instance.display.showCategory;
  bool get showType => LogConfig.instance.display.showType;
  bool get showTags => LogConfig.instance.display.showTags;
  bool get showEmoji => LogConfig.instance.display.showEmoji;

  String _emoji(LogEvent event) => PrettyPrinter.levelEmojis[event.level]!;
  AnsiColor _errorColor() => PrettyPrinter.levelColors[Level.error]!;
  AnsiColor _stackTraceColor() => PrettyPrinter.levelColors[Level.warning]!;
  AnsiColor _defaultColor(LogEvent event) =>
      PrettyPrinter.levelColors[event.level]!;
  AnsiColor _colorOrDefault(LogEvent event) => color ?? _defaultColor(event);

  @override
  List<String> log(LogEvent event) {
    final color = _colorOrDefault(event);
    final errorColor = _errorColor();
    final stackTraceColor = _stackTraceColor();

    final meta = [
      if (showLayer) layer.name,
      if (showCategory) category.name,
      if (showType) T.toString(),
    ].join('/');

    var logEntry = meta.isEmpty ? event.message : '[$meta] : ${event.message}';

    if (showEmoji) {
      logEntry = _emoji(event) + logEntry;
    }

    final tags = this.tags.map((e) => '#$e').join(' ');
    if (showTags) {
      logEntry = '$logEntry [$tags]';
    }

    if (event.error != null) {
      return [
        color(logEntry),
        errorColor('[Error] : ${event.error}'),
        if (event.stackTrace != null)
          stackTraceColor('[Stack Trace] :  ${event.stackTrace}'),
      ];
    }
    return [color(logEntry)];
  }
}
