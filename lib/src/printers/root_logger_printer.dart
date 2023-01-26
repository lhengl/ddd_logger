part of '../ddd_logger.dart';

class RootLogPrinter<T> extends LogPrinter {
  String _emoji(LogEvent event) => PrettyPrinter.levelEmojis[event.level]!;
  AnsiColor _errorColor() => PrettyPrinter.levelColors[Level.error]!;
  AnsiColor _stackTraceColor() => PrettyPrinter.levelColors[Level.warning]!;
  // AnsiColor _defaultColor(LogEvent event) => PrettyPrinter.levelColors[event.level]!;

  @override
  List<String> log(LogEvent event) {
    final color = AnsiColor.fg(AnsiColors.grey);
    final errorColor = _errorColor();
    final stackTraceColor = _stackTraceColor();
    final logEntry = '${_emoji(event)}[${T.toString()}] : ${event.message}';
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
