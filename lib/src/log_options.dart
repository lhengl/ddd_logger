part of 'ddd_logger.dart';

class LogOptions {
  // entire log
  final bool showLogs;

  // line display options
  final Level level;
  final bool showEmoji;
  final bool showLayer;
  final bool showCategory;
  final bool showType;
  final bool showTags;
  final bool useColors;

  // filter options
  final Set<String> includeTags;
  final Set<String> excludeTags;

  // color options
  final Map<String, int> colors;

  /// Spectrum defines the color priority to use for the layer or category
  /// Valid values: "layer" or "category"
  /// If value is "layer", the logs will be colored by layer
  /// If value is "category", the logs will be colored by category
  final String colorSpectrum;

  const LogOptions({
    this.showLogs = true,
    this.level = Level.debug,
    this.showEmoji = true,
    this.showLayer = false,
    this.showCategory = false,
    this.showType = true,
    this.showTags = false,
    this.useColors = true,
    this.includeTags = const {},
    this.excludeTags = const {},
    this.colors = const {},
    this.colorSpectrum = 'layer',
  });

  Map<String, dynamic> toJson() {
    return {
      'showLogs': showLogs,
      'showEmoji': showEmoji,
      'showLayer': showLayer,
      'showCategory': showCategory,
      'showType': showType,
      'showTags': showTags,
      'useColors': useColors,
      'includeTags': includeTags.toList(),
      'excludeTags': excludeTags.toList(),
      'colors': colors,
      'colorSpectrum': colorSpectrum,
    };
  }

  factory LogOptions.fromJson(Map<String, dynamic> json) {
    return LogOptions(
      showLogs: json['showLogs'] ?? true,
      showEmoji: json['showEmoji'] ?? true,
      showLayer: json['showLayer'] ?? false,
      showCategory: json['showCategory'] ?? false,
      showType: json['showType'] ?? true,
      showTags: json['showTags'] ?? false,
      useColors: json['useColors'] ?? true,
      includeTags: (json['includeTags'] as List?)?.toSet().cast<String>() ?? {},
      excludeTags: (json['excludeTags'] as List?)?.toSet().cast<String>() ?? {},
      colors: (json['colors'] as Map?)?.cast<String, int>() ?? {},
      colorSpectrum: json['colorSpectrum'] ?? 'layer',
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogOptions &&
          runtimeType == other.runtimeType &&
          showLogs == other.showLogs &&
          level == other.level &&
          showEmoji == other.showEmoji &&
          showLayer == other.showLayer &&
          showCategory == other.showCategory &&
          showType == other.showType &&
          showTags == other.showTags &&
          useColors == other.useColors &&
          _setEquals(includeTags, other.includeTags) &&
          _setEquals(excludeTags, other.excludeTags) &&
          _mapEquals(colors, other.colors) &&
          colorSpectrum == other.colorSpectrum;

  bool _setEquals(Set<dynamic> set1, Set<dynamic> set2) {
    if (set1.length != set2.length) {
      return false;
    }
    return set1.every((element) => set2.contains(element));
  }

  bool _mapEquals(Map<dynamic, dynamic> map1, Map<dynamic, dynamic> map2) {
    if (map1.length != map2.length) {
      return false;
    }
    return map1.entries.every((entry) => map2.containsKey(entry.key) && map2[entry.key] == entry.value);
  }

  @override
  int get hashCode =>
      showLogs.hashCode ^
      level.hashCode ^
      showEmoji.hashCode ^
      showLayer.hashCode ^
      showCategory.hashCode ^
      showType.hashCode ^
      showTags.hashCode ^
      useColors.hashCode ^
      _setHashCode(includeTags) ^
      _setHashCode(excludeTags) ^
      _mapHashCode(colors) ^
      colorSpectrum.hashCode;

  int _setHashCode(Set<dynamic> set) {
    return set.fold(0, (previousValue, element) => previousValue ^ element.hashCode);
  }

  int _mapHashCode(Map<dynamic, dynamic> map) {
    return map.entries.fold(0, (previousValue, entry) => previousValue ^ entry.key.hashCode ^ entry.value.hashCode);
  }
}
