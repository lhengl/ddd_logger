import 'package:logger/logger.dart';

export 'package:logger/logger.dart';

part 'application_logger.dart';
part 'common_logger.dart';
part 'ddd_log_filter.dart';
part 'ddd_log_printer.dart';
part 'domain_logger.dart';
part 'infrastructure_logger.dart';
part 'log_options.dart';
part 'presentation_logger.dart';

abstract class DDDLogger {
  static LogOptions globalOptions = LogOptions();
  static LogOutput? globalOutput;
}
