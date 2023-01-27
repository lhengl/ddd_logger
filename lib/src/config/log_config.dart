part of '../ddd_logger.dart';

/// The configuration object which is loaded from a json file.
/// Example of JsonFile to load from:
/// {
///   "showLogs": true,
///   "spectrum": "layer",
///   "display": {
///     "showEmoji": true,
///     "showLayer": false,
///     "showCategory": false,
///     "showType": true,
///     "showTags": false
///   },
///   "filter": {
///     "level": "verbose",
///     "layers": [],
///     "includeCategories": [],
///     "excludeCategories": [],
///     "includeTypes": [],
///     "excludeTypes": [],
///     "includeTags": [],
///     "excludeTags": []
///   },
///   "color": {
///     "spectrum": "layer",
///     "byLayer": {
///       "common": 11,
///       "domain": 13,
///       "application": 4,
///       "infrastructure": 166,
///       "presentation": 34
///     },
///     "byCategory": {
///       "util": 11,
///       "repo": 166,
///       "service": 27,
///       "controller": 4,
///       "view": 34,
///       "entity": 13,
///       "value": 207,
///       "viewModel": 135,
///       "model": 5,
///       "mapper": 208
///     }
///   }
/// };

@freezed
class LogConfig with _$LogConfig {
  static log([String tag = '']) => LogFactory.root<LogConfig>();

  const LogConfig._();

  const factory LogConfig({
    @Default(false) bool showLogs,
    @Default(LogDisplayOptions()) LogDisplayOptions display,
    @Default(LogFilterOptions()) LogFilterOptions filter,
    @Default(LogColorOptions()) LogColorOptions color,
  }) = _LogConfig;

  factory LogConfig.fromJson(Map<String, dynamic> json) =>
      _$LogConfigFromJson(json);

  static late LogConfig _instance;
  static LogConfig get instance => _instance;

  /// This should be called after WidgetsFlutterBinding.ensureInitialized()
  static Future<LogConfig> init([dynamic config]) async {
    log().d('init : config=$config');
    if (config is LogConfig) {
      _instance = config;
    } else if (config is Map<String, dynamic>) {
      _instance = LogConfig.fromJson(config);
    } else if (config is String) {
      _instance = LogConfig.fromJson(jsonDecode(config));
    } else if (config is File) {
      _instance = LogConfig.fromJson(jsonDecode(await config.readAsString()));
    } else {
      _instance = LogConfig.fromJson(_defaultConfig);
    }
    return _instance;
  }
}

@freezed
class LogDisplayOptions with _$LogDisplayOptions {
  const factory LogDisplayOptions({
    @Default(true) bool showEmoji,
    @Default(false) bool showLayer,
    @Default(false) bool showCategory,
    @Default(true) bool showType,
    @Default(false) bool showTags,
  }) = _LogDisplayOptions;

  factory LogDisplayOptions.fromJson(Map<String, dynamic> json) =>
      _$LogDisplayOptionsFromJson(json);
}

@freezed
class LogFilterOptions with _$LogFilterOptions {
  const factory LogFilterOptions({
    @Default(Level.verbose) Level level,
    @Default({}) Set<LogLayer> layers,
    @Default({}) Set<LogCategory> includeCategories,
    @Default({}) Set<LogCategory> excludeCategories,
    @Default({}) Set<String> includeTypes,
    @Default({}) Set<String> excludeTypes,
    @Default({}) Set<String> includeTags,
    @Default({}) Set<String> excludeTags,
  }) = _LogFilterOptions;

  factory LogFilterOptions.fromJson(Map<String, dynamic> json) =>
      _$LogFilterOptionsFromJson(json);
}

@freezed
class LogColorOptions with _$LogColorOptions {
  const factory LogColorOptions({
    @Default(LogColorSpectrum.layer) LogColorSpectrum spectrum,
    @Default({}) Map<LogLayer, int> byLayer,
    @Default({}) Map<LogCategory, int> byCategory,
  }) = _LogColorOptions;

  factory LogColorOptions.fromJson(Map<String, dynamic> json) =>
      _$LogColorOptionsFromJson(json);
}
