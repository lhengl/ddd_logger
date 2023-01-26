// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ddd_logger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogConfig _$$_LogConfigFromJson(Map<String, dynamic> json) => _$_LogConfig(
      showLogs: json['showLogs'] as bool? ?? false,
      display: json['display'] == null
          ? const LogDisplayOptions()
          : LogDisplayOptions.fromJson(json['display'] as Map<String, dynamic>),
      filter: json['filter'] == null
          ? const LogFilterOptions()
          : LogFilterOptions.fromJson(json['filter'] as Map<String, dynamic>),
      color: json['color'] == null
          ? const LogColorOptions()
          : LogColorOptions.fromJson(json['color'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogConfigToJson(_$_LogConfig instance) =>
    <String, dynamic>{
      'showLogs': instance.showLogs,
      'display': instance.display,
      'filter': instance.filter,
      'color': instance.color,
    };

_$_LogDisplayOptions _$$_LogDisplayOptionsFromJson(Map<String, dynamic> json) =>
    _$_LogDisplayOptions(
      showEmoji: json['showEmoji'] as bool? ?? true,
      showLayer: json['showLayer'] as bool? ?? false,
      showCategory: json['showCategory'] as bool? ?? false,
      showType: json['showType'] as bool? ?? true,
      showTags: json['showTags'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LogDisplayOptionsToJson(
        _$_LogDisplayOptions instance) =>
    <String, dynamic>{
      'showEmoji': instance.showEmoji,
      'showLayer': instance.showLayer,
      'showCategory': instance.showCategory,
      'showType': instance.showType,
      'showTags': instance.showTags,
    };

_$_LogFilterOptions _$$_LogFilterOptionsFromJson(Map<String, dynamic> json) =>
    _$_LogFilterOptions(
      level:
          $enumDecodeNullable(_$LevelEnumMap, json['level']) ?? Level.verbose,
      layers: (json['layers'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LogLayerEnumMap, e))
              .toSet() ??
          const {},
      includeCategories: (json['includeCategories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LogCategoryEnumMap, e))
              .toSet() ??
          const {},
      excludeCategories: (json['excludeCategories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$LogCategoryEnumMap, e))
              .toSet() ??
          const {},
      includeTypes: (json['includeTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      excludeTypes: (json['excludeTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      includeTags: (json['includeTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      excludeTags: (json['excludeTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$_LogFilterOptionsToJson(_$_LogFilterOptions instance) =>
    <String, dynamic>{
      'level': _$LevelEnumMap[instance.level]!,
      'layers': instance.layers.map((e) => _$LogLayerEnumMap[e]!).toList(),
      'includeCategories': instance.includeCategories
          .map((e) => _$LogCategoryEnumMap[e]!)
          .toList(),
      'excludeCategories': instance.excludeCategories
          .map((e) => _$LogCategoryEnumMap[e]!)
          .toList(),
      'includeTypes': instance.includeTypes.toList(),
      'excludeTypes': instance.excludeTypes.toList(),
      'includeTags': instance.includeTags.toList(),
      'excludeTags': instance.excludeTags.toList(),
    };

const _$LevelEnumMap = {
  Level.verbose: 'verbose',
  Level.debug: 'debug',
  Level.info: 'info',
  Level.warning: 'warning',
  Level.error: 'error',
  Level.wtf: 'wtf',
  Level.nothing: 'nothing',
};

const _$LogLayerEnumMap = {
  LogLayer.common: 'common',
  LogLayer.domain: 'domain',
  LogLayer.application: 'application',
  LogLayer.infrastructure: 'infrastructure',
  LogLayer.presentation: 'presentation',
};

const _$LogCategoryEnumMap = {
  LogCategory.repo: 'repo',
  LogCategory.service: 'service',
  LogCategory.util: 'util',
  LogCategory.entity: 'entity',
  LogCategory.value: 'value',
  LogCategory.controller: 'controller',
  LogCategory.view: 'view',
  LogCategory.viewModel: 'viewModel',
  LogCategory.mapper: 'mapper',
  LogCategory.model: 'model',
};

_$_LogColorOptions _$$_LogColorOptionsFromJson(Map<String, dynamic> json) =>
    _$_LogColorOptions(
      spectrum:
          $enumDecodeNullable(_$LogColorSpectrumEnumMap, json['spectrum']) ??
              LogColorSpectrum.layer,
      byLayer: (json['byLayer'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$LogLayerEnumMap, k), e as int),
          ) ??
          const {},
      byCategory: (json['byCategory'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$LogCategoryEnumMap, k), e as int),
          ) ??
          const {},
    );

Map<String, dynamic> _$$_LogColorOptionsToJson(_$_LogColorOptions instance) =>
    <String, dynamic>{
      'spectrum': _$LogColorSpectrumEnumMap[instance.spectrum]!,
      'byLayer':
          instance.byLayer.map((k, e) => MapEntry(_$LogLayerEnumMap[k]!, e)),
      'byCategory': instance.byCategory
          .map((k, e) => MapEntry(_$LogCategoryEnumMap[k]!, e)),
    };

const _$LogColorSpectrumEnumMap = {
  LogColorSpectrum.layer: 'layer',
  LogColorSpectrum.category: 'category',
};
