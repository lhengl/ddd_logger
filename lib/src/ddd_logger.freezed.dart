// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ddd_logger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogConfig _$LogConfigFromJson(Map<String, dynamic> json) {
  return _LogConfig.fromJson(json);
}

/// @nodoc
mixin _$LogConfig {
  bool get showLogs => throw _privateConstructorUsedError;
  LogDisplayOptions get display => throw _privateConstructorUsedError;
  LogFilterOptions get filter => throw _privateConstructorUsedError;
  LogColorOptions get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogConfigCopyWith<LogConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogConfigCopyWith<$Res> {
  factory $LogConfigCopyWith(LogConfig value, $Res Function(LogConfig) then) =
      _$LogConfigCopyWithImpl<$Res, LogConfig>;
  @useResult
  $Res call(
      {bool showLogs,
      LogDisplayOptions display,
      LogFilterOptions filter,
      LogColorOptions color});

  $LogDisplayOptionsCopyWith<$Res> get display;
  $LogFilterOptionsCopyWith<$Res> get filter;
  $LogColorOptionsCopyWith<$Res> get color;
}

/// @nodoc
class _$LogConfigCopyWithImpl<$Res, $Val extends LogConfig>
    implements $LogConfigCopyWith<$Res> {
  _$LogConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLogs = null,
    Object? display = null,
    Object? filter = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      showLogs: null == showLogs
          ? _value.showLogs
          : showLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as LogDisplayOptions,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LogFilterOptions,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as LogColorOptions,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogDisplayOptionsCopyWith<$Res> get display {
    return $LogDisplayOptionsCopyWith<$Res>(_value.display, (value) {
      return _then(_value.copyWith(display: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LogFilterOptionsCopyWith<$Res> get filter {
    return $LogFilterOptionsCopyWith<$Res>(_value.filter, (value) {
      return _then(_value.copyWith(filter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LogColorOptionsCopyWith<$Res> get color {
    return $LogColorOptionsCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LogConfigCopyWith<$Res> implements $LogConfigCopyWith<$Res> {
  factory _$$_LogConfigCopyWith(
          _$_LogConfig value, $Res Function(_$_LogConfig) then) =
      __$$_LogConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showLogs,
      LogDisplayOptions display,
      LogFilterOptions filter,
      LogColorOptions color});

  @override
  $LogDisplayOptionsCopyWith<$Res> get display;
  @override
  $LogFilterOptionsCopyWith<$Res> get filter;
  @override
  $LogColorOptionsCopyWith<$Res> get color;
}

/// @nodoc
class __$$_LogConfigCopyWithImpl<$Res>
    extends _$LogConfigCopyWithImpl<$Res, _$_LogConfig>
    implements _$$_LogConfigCopyWith<$Res> {
  __$$_LogConfigCopyWithImpl(
      _$_LogConfig _value, $Res Function(_$_LogConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showLogs = null,
    Object? display = null,
    Object? filter = null,
    Object? color = null,
  }) {
    return _then(_$_LogConfig(
      showLogs: null == showLogs
          ? _value.showLogs
          : showLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      display: null == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as LogDisplayOptions,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LogFilterOptions,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as LogColorOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogConfig extends _LogConfig {
  const _$_LogConfig(
      {this.showLogs = false,
      this.display = const LogDisplayOptions(),
      this.filter = const LogFilterOptions(),
      this.color = const LogColorOptions()})
      : super._();

  factory _$_LogConfig.fromJson(Map<String, dynamic> json) =>
      _$$_LogConfigFromJson(json);

  @override
  @JsonKey()
  final bool showLogs;
  @override
  @JsonKey()
  final LogDisplayOptions display;
  @override
  @JsonKey()
  final LogFilterOptions filter;
  @override
  @JsonKey()
  final LogColorOptions color;

  @override
  String toString() {
    return 'LogConfig(showLogs: $showLogs, display: $display, filter: $filter, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogConfig &&
            (identical(other.showLogs, showLogs) ||
                other.showLogs == showLogs) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, showLogs, display, filter, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogConfigCopyWith<_$_LogConfig> get copyWith =>
      __$$_LogConfigCopyWithImpl<_$_LogConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogConfigToJson(
      this,
    );
  }
}

abstract class _LogConfig extends LogConfig {
  const factory _LogConfig(
      {final bool showLogs,
      final LogDisplayOptions display,
      final LogFilterOptions filter,
      final LogColorOptions color}) = _$_LogConfig;
  const _LogConfig._() : super._();

  factory _LogConfig.fromJson(Map<String, dynamic> json) =
      _$_LogConfig.fromJson;

  @override
  bool get showLogs;
  @override
  LogDisplayOptions get display;
  @override
  LogFilterOptions get filter;
  @override
  LogColorOptions get color;
  @override
  @JsonKey(ignore: true)
  _$$_LogConfigCopyWith<_$_LogConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

LogDisplayOptions _$LogDisplayOptionsFromJson(Map<String, dynamic> json) {
  return _LogDisplayOptions.fromJson(json);
}

/// @nodoc
mixin _$LogDisplayOptions {
  bool get showEmoji => throw _privateConstructorUsedError;
  bool get showLayer => throw _privateConstructorUsedError;
  bool get showCategory => throw _privateConstructorUsedError;
  bool get showType => throw _privateConstructorUsedError;
  bool get showTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogDisplayOptionsCopyWith<LogDisplayOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogDisplayOptionsCopyWith<$Res> {
  factory $LogDisplayOptionsCopyWith(
          LogDisplayOptions value, $Res Function(LogDisplayOptions) then) =
      _$LogDisplayOptionsCopyWithImpl<$Res, LogDisplayOptions>;
  @useResult
  $Res call(
      {bool showEmoji,
      bool showLayer,
      bool showCategory,
      bool showType,
      bool showTags});
}

/// @nodoc
class _$LogDisplayOptionsCopyWithImpl<$Res, $Val extends LogDisplayOptions>
    implements $LogDisplayOptionsCopyWith<$Res> {
  _$LogDisplayOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmoji = null,
    Object? showLayer = null,
    Object? showCategory = null,
    Object? showType = null,
    Object? showTags = null,
  }) {
    return _then(_value.copyWith(
      showEmoji: null == showEmoji
          ? _value.showEmoji
          : showEmoji // ignore: cast_nullable_to_non_nullable
              as bool,
      showLayer: null == showLayer
          ? _value.showLayer
          : showLayer // ignore: cast_nullable_to_non_nullable
              as bool,
      showCategory: null == showCategory
          ? _value.showCategory
          : showCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      showType: null == showType
          ? _value.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as bool,
      showTags: null == showTags
          ? _value.showTags
          : showTags // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogDisplayOptionsCopyWith<$Res>
    implements $LogDisplayOptionsCopyWith<$Res> {
  factory _$$_LogDisplayOptionsCopyWith(_$_LogDisplayOptions value,
          $Res Function(_$_LogDisplayOptions) then) =
      __$$_LogDisplayOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showEmoji,
      bool showLayer,
      bool showCategory,
      bool showType,
      bool showTags});
}

/// @nodoc
class __$$_LogDisplayOptionsCopyWithImpl<$Res>
    extends _$LogDisplayOptionsCopyWithImpl<$Res, _$_LogDisplayOptions>
    implements _$$_LogDisplayOptionsCopyWith<$Res> {
  __$$_LogDisplayOptionsCopyWithImpl(
      _$_LogDisplayOptions _value, $Res Function(_$_LogDisplayOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showEmoji = null,
    Object? showLayer = null,
    Object? showCategory = null,
    Object? showType = null,
    Object? showTags = null,
  }) {
    return _then(_$_LogDisplayOptions(
      showEmoji: null == showEmoji
          ? _value.showEmoji
          : showEmoji // ignore: cast_nullable_to_non_nullable
              as bool,
      showLayer: null == showLayer
          ? _value.showLayer
          : showLayer // ignore: cast_nullable_to_non_nullable
              as bool,
      showCategory: null == showCategory
          ? _value.showCategory
          : showCategory // ignore: cast_nullable_to_non_nullable
              as bool,
      showType: null == showType
          ? _value.showType
          : showType // ignore: cast_nullable_to_non_nullable
              as bool,
      showTags: null == showTags
          ? _value.showTags
          : showTags // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogDisplayOptions implements _LogDisplayOptions {
  const _$_LogDisplayOptions(
      {this.showEmoji = true,
      this.showLayer = false,
      this.showCategory = false,
      this.showType = true,
      this.showTags = false});

  factory _$_LogDisplayOptions.fromJson(Map<String, dynamic> json) =>
      _$$_LogDisplayOptionsFromJson(json);

  @override
  @JsonKey()
  final bool showEmoji;
  @override
  @JsonKey()
  final bool showLayer;
  @override
  @JsonKey()
  final bool showCategory;
  @override
  @JsonKey()
  final bool showType;
  @override
  @JsonKey()
  final bool showTags;

  @override
  String toString() {
    return 'LogDisplayOptions(showEmoji: $showEmoji, showLayer: $showLayer, showCategory: $showCategory, showType: $showType, showTags: $showTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogDisplayOptions &&
            (identical(other.showEmoji, showEmoji) ||
                other.showEmoji == showEmoji) &&
            (identical(other.showLayer, showLayer) ||
                other.showLayer == showLayer) &&
            (identical(other.showCategory, showCategory) ||
                other.showCategory == showCategory) &&
            (identical(other.showType, showType) ||
                other.showType == showType) &&
            (identical(other.showTags, showTags) ||
                other.showTags == showTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, showEmoji, showLayer, showCategory, showType, showTags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogDisplayOptionsCopyWith<_$_LogDisplayOptions> get copyWith =>
      __$$_LogDisplayOptionsCopyWithImpl<_$_LogDisplayOptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogDisplayOptionsToJson(
      this,
    );
  }
}

abstract class _LogDisplayOptions implements LogDisplayOptions {
  const factory _LogDisplayOptions(
      {final bool showEmoji,
      final bool showLayer,
      final bool showCategory,
      final bool showType,
      final bool showTags}) = _$_LogDisplayOptions;

  factory _LogDisplayOptions.fromJson(Map<String, dynamic> json) =
      _$_LogDisplayOptions.fromJson;

  @override
  bool get showEmoji;
  @override
  bool get showLayer;
  @override
  bool get showCategory;
  @override
  bool get showType;
  @override
  bool get showTags;
  @override
  @JsonKey(ignore: true)
  _$$_LogDisplayOptionsCopyWith<_$_LogDisplayOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

LogFilterOptions _$LogFilterOptionsFromJson(Map<String, dynamic> json) {
  return _LogFilterOptions.fromJson(json);
}

/// @nodoc
mixin _$LogFilterOptions {
  Level get level => throw _privateConstructorUsedError;
  Set<LogLayer> get layers => throw _privateConstructorUsedError;
  Set<LogCategory> get includeCategories => throw _privateConstructorUsedError;
  Set<LogCategory> get excludeCategories => throw _privateConstructorUsedError;
  Set<String> get includeTypes => throw _privateConstructorUsedError;
  Set<String> get excludeTypes => throw _privateConstructorUsedError;
  Set<String> get includeTags => throw _privateConstructorUsedError;
  Set<String> get excludeTags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogFilterOptionsCopyWith<LogFilterOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogFilterOptionsCopyWith<$Res> {
  factory $LogFilterOptionsCopyWith(
          LogFilterOptions value, $Res Function(LogFilterOptions) then) =
      _$LogFilterOptionsCopyWithImpl<$Res, LogFilterOptions>;
  @useResult
  $Res call(
      {Level level,
      Set<LogLayer> layers,
      Set<LogCategory> includeCategories,
      Set<LogCategory> excludeCategories,
      Set<String> includeTypes,
      Set<String> excludeTypes,
      Set<String> includeTags,
      Set<String> excludeTags});
}

/// @nodoc
class _$LogFilterOptionsCopyWithImpl<$Res, $Val extends LogFilterOptions>
    implements $LogFilterOptionsCopyWith<$Res> {
  _$LogFilterOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? layers = null,
    Object? includeCategories = null,
    Object? excludeCategories = null,
    Object? includeTypes = null,
    Object? excludeTypes = null,
    Object? includeTags = null,
    Object? excludeTags = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      layers: null == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<LogLayer>,
      includeCategories: null == includeCategories
          ? _value.includeCategories
          : includeCategories // ignore: cast_nullable_to_non_nullable
              as Set<LogCategory>,
      excludeCategories: null == excludeCategories
          ? _value.excludeCategories
          : excludeCategories // ignore: cast_nullable_to_non_nullable
              as Set<LogCategory>,
      includeTypes: null == includeTypes
          ? _value.includeTypes
          : includeTypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      excludeTypes: null == excludeTypes
          ? _value.excludeTypes
          : excludeTypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      includeTags: null == includeTags
          ? _value.includeTags
          : includeTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      excludeTags: null == excludeTags
          ? _value.excludeTags
          : excludeTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogFilterOptionsCopyWith<$Res>
    implements $LogFilterOptionsCopyWith<$Res> {
  factory _$$_LogFilterOptionsCopyWith(
          _$_LogFilterOptions value, $Res Function(_$_LogFilterOptions) then) =
      __$$_LogFilterOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Level level,
      Set<LogLayer> layers,
      Set<LogCategory> includeCategories,
      Set<LogCategory> excludeCategories,
      Set<String> includeTypes,
      Set<String> excludeTypes,
      Set<String> includeTags,
      Set<String> excludeTags});
}

/// @nodoc
class __$$_LogFilterOptionsCopyWithImpl<$Res>
    extends _$LogFilterOptionsCopyWithImpl<$Res, _$_LogFilterOptions>
    implements _$$_LogFilterOptionsCopyWith<$Res> {
  __$$_LogFilterOptionsCopyWithImpl(
      _$_LogFilterOptions _value, $Res Function(_$_LogFilterOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? layers = null,
    Object? includeCategories = null,
    Object? excludeCategories = null,
    Object? includeTypes = null,
    Object? excludeTypes = null,
    Object? includeTags = null,
    Object? excludeTags = null,
  }) {
    return _then(_$_LogFilterOptions(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      layers: null == layers
          ? _value._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as Set<LogLayer>,
      includeCategories: null == includeCategories
          ? _value._includeCategories
          : includeCategories // ignore: cast_nullable_to_non_nullable
              as Set<LogCategory>,
      excludeCategories: null == excludeCategories
          ? _value._excludeCategories
          : excludeCategories // ignore: cast_nullable_to_non_nullable
              as Set<LogCategory>,
      includeTypes: null == includeTypes
          ? _value._includeTypes
          : includeTypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      excludeTypes: null == excludeTypes
          ? _value._excludeTypes
          : excludeTypes // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      includeTags: null == includeTags
          ? _value._includeTags
          : includeTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      excludeTags: null == excludeTags
          ? _value._excludeTags
          : excludeTags // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogFilterOptions implements _LogFilterOptions {
  const _$_LogFilterOptions(
      {this.level = Level.verbose,
      final Set<LogLayer> layers = const {},
      final Set<LogCategory> includeCategories = const {},
      final Set<LogCategory> excludeCategories = const {},
      final Set<String> includeTypes = const {},
      final Set<String> excludeTypes = const {},
      final Set<String> includeTags = const {},
      final Set<String> excludeTags = const {}})
      : _layers = layers,
        _includeCategories = includeCategories,
        _excludeCategories = excludeCategories,
        _includeTypes = includeTypes,
        _excludeTypes = excludeTypes,
        _includeTags = includeTags,
        _excludeTags = excludeTags;

  factory _$_LogFilterOptions.fromJson(Map<String, dynamic> json) =>
      _$$_LogFilterOptionsFromJson(json);

  @override
  @JsonKey()
  final Level level;
  final Set<LogLayer> _layers;
  @override
  @JsonKey()
  Set<LogLayer> get layers {
    if (_layers is EqualUnmodifiableSetView) return _layers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_layers);
  }

  final Set<LogCategory> _includeCategories;
  @override
  @JsonKey()
  Set<LogCategory> get includeCategories {
    if (_includeCategories is EqualUnmodifiableSetView)
      return _includeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_includeCategories);
  }

  final Set<LogCategory> _excludeCategories;
  @override
  @JsonKey()
  Set<LogCategory> get excludeCategories {
    if (_excludeCategories is EqualUnmodifiableSetView)
      return _excludeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_excludeCategories);
  }

  final Set<String> _includeTypes;
  @override
  @JsonKey()
  Set<String> get includeTypes {
    if (_includeTypes is EqualUnmodifiableSetView) return _includeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_includeTypes);
  }

  final Set<String> _excludeTypes;
  @override
  @JsonKey()
  Set<String> get excludeTypes {
    if (_excludeTypes is EqualUnmodifiableSetView) return _excludeTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_excludeTypes);
  }

  final Set<String> _includeTags;
  @override
  @JsonKey()
  Set<String> get includeTags {
    if (_includeTags is EqualUnmodifiableSetView) return _includeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_includeTags);
  }

  final Set<String> _excludeTags;
  @override
  @JsonKey()
  Set<String> get excludeTags {
    if (_excludeTags is EqualUnmodifiableSetView) return _excludeTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_excludeTags);
  }

  @override
  String toString() {
    return 'LogFilterOptions(level: $level, layers: $layers, includeCategories: $includeCategories, excludeCategories: $excludeCategories, includeTypes: $includeTypes, excludeTypes: $excludeTypes, includeTags: $includeTags, excludeTags: $excludeTags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogFilterOptions &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            const DeepCollectionEquality()
                .equals(other._includeCategories, _includeCategories) &&
            const DeepCollectionEquality()
                .equals(other._excludeCategories, _excludeCategories) &&
            const DeepCollectionEquality()
                .equals(other._includeTypes, _includeTypes) &&
            const DeepCollectionEquality()
                .equals(other._excludeTypes, _excludeTypes) &&
            const DeepCollectionEquality()
                .equals(other._includeTags, _includeTags) &&
            const DeepCollectionEquality()
                .equals(other._excludeTags, _excludeTags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      const DeepCollectionEquality().hash(_layers),
      const DeepCollectionEquality().hash(_includeCategories),
      const DeepCollectionEquality().hash(_excludeCategories),
      const DeepCollectionEquality().hash(_includeTypes),
      const DeepCollectionEquality().hash(_excludeTypes),
      const DeepCollectionEquality().hash(_includeTags),
      const DeepCollectionEquality().hash(_excludeTags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogFilterOptionsCopyWith<_$_LogFilterOptions> get copyWith =>
      __$$_LogFilterOptionsCopyWithImpl<_$_LogFilterOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogFilterOptionsToJson(
      this,
    );
  }
}

abstract class _LogFilterOptions implements LogFilterOptions {
  const factory _LogFilterOptions(
      {final Level level,
      final Set<LogLayer> layers,
      final Set<LogCategory> includeCategories,
      final Set<LogCategory> excludeCategories,
      final Set<String> includeTypes,
      final Set<String> excludeTypes,
      final Set<String> includeTags,
      final Set<String> excludeTags}) = _$_LogFilterOptions;

  factory _LogFilterOptions.fromJson(Map<String, dynamic> json) =
      _$_LogFilterOptions.fromJson;

  @override
  Level get level;
  @override
  Set<LogLayer> get layers;
  @override
  Set<LogCategory> get includeCategories;
  @override
  Set<LogCategory> get excludeCategories;
  @override
  Set<String> get includeTypes;
  @override
  Set<String> get excludeTypes;
  @override
  Set<String> get includeTags;
  @override
  Set<String> get excludeTags;
  @override
  @JsonKey(ignore: true)
  _$$_LogFilterOptionsCopyWith<_$_LogFilterOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

LogColorOptions _$LogColorOptionsFromJson(Map<String, dynamic> json) {
  return _LogColorOptions.fromJson(json);
}

/// @nodoc
mixin _$LogColorOptions {
  LogColorSpectrum get spectrum => throw _privateConstructorUsedError;
  Map<LogLayer, int> get byLayer => throw _privateConstructorUsedError;
  Map<LogCategory, int> get byCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogColorOptionsCopyWith<LogColorOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogColorOptionsCopyWith<$Res> {
  factory $LogColorOptionsCopyWith(
          LogColorOptions value, $Res Function(LogColorOptions) then) =
      _$LogColorOptionsCopyWithImpl<$Res, LogColorOptions>;
  @useResult
  $Res call(
      {LogColorSpectrum spectrum,
      Map<LogLayer, int> byLayer,
      Map<LogCategory, int> byCategory});
}

/// @nodoc
class _$LogColorOptionsCopyWithImpl<$Res, $Val extends LogColorOptions>
    implements $LogColorOptionsCopyWith<$Res> {
  _$LogColorOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spectrum = null,
    Object? byLayer = null,
    Object? byCategory = null,
  }) {
    return _then(_value.copyWith(
      spectrum: null == spectrum
          ? _value.spectrum
          : spectrum // ignore: cast_nullable_to_non_nullable
              as LogColorSpectrum,
      byLayer: null == byLayer
          ? _value.byLayer
          : byLayer // ignore: cast_nullable_to_non_nullable
              as Map<LogLayer, int>,
      byCategory: null == byCategory
          ? _value.byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as Map<LogCategory, int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogColorOptionsCopyWith<$Res>
    implements $LogColorOptionsCopyWith<$Res> {
  factory _$$_LogColorOptionsCopyWith(
          _$_LogColorOptions value, $Res Function(_$_LogColorOptions) then) =
      __$$_LogColorOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogColorSpectrum spectrum,
      Map<LogLayer, int> byLayer,
      Map<LogCategory, int> byCategory});
}

/// @nodoc
class __$$_LogColorOptionsCopyWithImpl<$Res>
    extends _$LogColorOptionsCopyWithImpl<$Res, _$_LogColorOptions>
    implements _$$_LogColorOptionsCopyWith<$Res> {
  __$$_LogColorOptionsCopyWithImpl(
      _$_LogColorOptions _value, $Res Function(_$_LogColorOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spectrum = null,
    Object? byLayer = null,
    Object? byCategory = null,
  }) {
    return _then(_$_LogColorOptions(
      spectrum: null == spectrum
          ? _value.spectrum
          : spectrum // ignore: cast_nullable_to_non_nullable
              as LogColorSpectrum,
      byLayer: null == byLayer
          ? _value._byLayer
          : byLayer // ignore: cast_nullable_to_non_nullable
              as Map<LogLayer, int>,
      byCategory: null == byCategory
          ? _value._byCategory
          : byCategory // ignore: cast_nullable_to_non_nullable
              as Map<LogCategory, int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogColorOptions implements _LogColorOptions {
  const _$_LogColorOptions(
      {this.spectrum = LogColorSpectrum.layer,
      final Map<LogLayer, int> byLayer = const {},
      final Map<LogCategory, int> byCategory = const {}})
      : _byLayer = byLayer,
        _byCategory = byCategory;

  factory _$_LogColorOptions.fromJson(Map<String, dynamic> json) =>
      _$$_LogColorOptionsFromJson(json);

  @override
  @JsonKey()
  final LogColorSpectrum spectrum;
  final Map<LogLayer, int> _byLayer;
  @override
  @JsonKey()
  Map<LogLayer, int> get byLayer {
    if (_byLayer is EqualUnmodifiableMapView) return _byLayer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byLayer);
  }

  final Map<LogCategory, int> _byCategory;
  @override
  @JsonKey()
  Map<LogCategory, int> get byCategory {
    if (_byCategory is EqualUnmodifiableMapView) return _byCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_byCategory);
  }

  @override
  String toString() {
    return 'LogColorOptions(spectrum: $spectrum, byLayer: $byLayer, byCategory: $byCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogColorOptions &&
            (identical(other.spectrum, spectrum) ||
                other.spectrum == spectrum) &&
            const DeepCollectionEquality().equals(other._byLayer, _byLayer) &&
            const DeepCollectionEquality()
                .equals(other._byCategory, _byCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      spectrum,
      const DeepCollectionEquality().hash(_byLayer),
      const DeepCollectionEquality().hash(_byCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogColorOptionsCopyWith<_$_LogColorOptions> get copyWith =>
      __$$_LogColorOptionsCopyWithImpl<_$_LogColorOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogColorOptionsToJson(
      this,
    );
  }
}

abstract class _LogColorOptions implements LogColorOptions {
  const factory _LogColorOptions(
      {final LogColorSpectrum spectrum,
      final Map<LogLayer, int> byLayer,
      final Map<LogCategory, int> byCategory}) = _$_LogColorOptions;

  factory _LogColorOptions.fromJson(Map<String, dynamic> json) =
      _$_LogColorOptions.fromJson;

  @override
  LogColorSpectrum get spectrum;
  @override
  Map<LogLayer, int> get byLayer;
  @override
  Map<LogCategory, int> get byCategory;
  @override
  @JsonKey(ignore: true)
  _$$_LogColorOptionsCopyWith<_$_LogColorOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
