part of '../ddd_logger.dart';

class DddLoggerFilter<T> extends LogFilter {
  DddLoggerFilter({
    required this.layer,
    required this.category,
    required this.tags,
  });

  final LogLayer layer;
  final LogCategory category;
  final Set<String> tags;

  // A convenient flag to hide all logs
  bool get showLogs => LogConfig.instance.showLogs;

  Set<LogLayer> get includeLayers => LogConfig.instance.filter.layers;

  Set<LogCategory> get includeCategories =>
      LogConfig.instance.filter.includeCategories;
  Set<LogCategory> get excludeCategories =>
      LogConfig.instance.filter.excludeCategories;

  Set<String> get includeTypes => LogConfig.instance.filter.includeTypes;
  Set<String> get excludeTypes => LogConfig.instance.filter.excludeTypes;

  Set<String> get includeTags => LogConfig.instance.filter.includeTags;
  Set<String> get excludeTags => LogConfig.instance.filter.excludeTags;

  @override
  bool shouldLog(LogEvent event) {
    if (!showLogs) return false;

    // inclusions
    final shouldIncludeLayers =
        includeLayers.isEmpty ? true : includeLayers.contains(layer);
    final shouldIncludeCategories =
        includeCategories.isEmpty ? true : includeCategories.contains(category);
    final shouldIncludeTypes =
        includeTypes.isEmpty ? true : includeTypes.contains(T.toString());
    final shouldIncludeTags =
        includeTags.isEmpty ? true : includeTags.intersection(tags).isNotEmpty;
    final shouldLogInclusions = shouldIncludeLayers &&
        shouldIncludeCategories &&
        shouldIncludeTypes &&
        shouldIncludeTags;

    // exclusions
    final shouldExcludeCategories = excludeCategories.isEmpty
        ? true
        : !excludeCategories.contains(category);
    final shouldExcludeTypes =
        excludeTypes.isEmpty ? true : !excludeTypes.contains(T.toString());
    final shouldExcludeTags =
        excludeTags.isEmpty ? true : !excludeTags.intersection(tags).isNotEmpty;
    final shouldLogExclusions =
        shouldExcludeCategories && shouldExcludeTypes && shouldExcludeTags;

    // print('shouldLogChild(event)=${shouldLogChild(event)}'
    //     '\n shouldIncludeTypes=$shouldIncludeTypes shouldIncludeLoggerTypes=$shouldIncludeLoggerTypes shouldIncludeTags=$shouldIncludeTags'
    //     '\n shouldExcludeTypes=$shouldExcludeTypes shouldExcludeLoggerTypes=$shouldExcludeLoggerTypes');
    // resolve all filters
    return shouldLogInclusions && shouldLogExclusions;
  }
}
