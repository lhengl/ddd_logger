import 'dart:convert';

import 'package:ddd_logger/ddd_logger.dart';
import 'package:test/test.dart';

class MockLogEvent implements LogEvent {
  @override
  get error => 'error';

  @override
  Level get level => Level.verbose;

  @override
  get message => 'message';

  @override
  StackTrace? get stackTrace => null;
}

void main() {
  group('DDDLoggerFilter', () {
    test('shouldLog returns false when showLogs is false', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: false,
          includeTags: {},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns true when showLogs is true', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns false when includeTags does not contain this any of this tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'layer2'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns true when includeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'layer1'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns true when includeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'category1'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns true when includeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'tag1'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns true when includeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'tag2'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns true when includeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {'layer1', 'category1', 'tag1', 'tag2'},
          excludeTags: {},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, true);
    });

    test('shouldLog returns false when excludeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {'layer1'},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns false when excludeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {'category1'},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns false when excludeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {'tag1'},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns false when excludeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {'tag2'},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });

    test('shouldLog returns false when excludeTags contain at least 1 tag', () {
      final logFilter = DDDLoggerFilter(
        type: Object, // Replace with an actual type instance
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showLogs: true,
          includeTags: {},
          excludeTags: {'layer1', 'category1', 'tag1', 'tag2'},
        ),
      );

      final result = logFilter.shouldLog(MockLogEvent());

      expect(result, false);
    });
  });

  group('DDDLogPrinter', () {
    test('Showing all display options', () {
      final printer = DDDLogPrinter(
        type: Object,
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showEmoji: true,
          showLayer: true,
          showCategory: true,
          showType: true,
          showTags: true,
          useColors: false,
        ),
      );

      final result = printer.log(MockLogEvent());

      expect(result, [
        '[layer1/category1/Object] : message [#tag1 #tag2]',
        '[Error] : error',
      ]);
    });

    test('Hiding all display options', () {
      final printer = DDDLogPrinter(
        type: Object,
        layer: 'layer1',
        category: 'category1',
        tags: {'tag1', 'tag2'},
        options: LogOptions(
          showEmoji: false,
          showLayer: false,
          showCategory: false,
          showType: false,
          showTags: false,
          useColors: false,
        ),
      );
      final result = printer.log(LogEvent(Level.verbose, 'message', null, null));

      expect(result, ['message']);
    });
  });

  group('LogOptions', () {
    test('toJson and fromJson should match for default options', () {
      // Arrange
      final defaultOptions = LogOptions();
      final json = defaultOptions.toJson();

      // Act
      final fromJson = LogOptions.fromJson(json);

      // Assert
      expect(fromJson, defaultOptions);
    });

    test('toJson and fromJson should match for custom options', () {
      // Arrange
      final customOptions = LogOptions(
        showLogs: false,
        level: Level.debug,
        showEmoji: false,
        showLayer: true,
        showCategory: true,
        showType: false,
        showTags: true,
        useColors: true,
        includeTags: {'tag1', 'tag2'},
        excludeTags: {'tag3'},
        colors: {'info': 32, 'error': 31},
        colorSpectrum: 'category',
      );
      final json = customOptions.toJson();

      // Act
      final fromJson = LogOptions.fromJson(json);

      // Assert
      expect(fromJson, customOptions);
    });

    test('fromJson should handle an empty map', () {
      // Arrange
      final emptyJson = <String, dynamic>{};

      // Act
      final fromJson = LogOptions.fromJson(emptyJson);

      // Assert
      expect(fromJson, LogOptions());
    });

    test('fromJson should handle null values', () {
      // Arrange
      final nullJson = {
        'showLogs': null,
        'showEmoji': null,
        'showLayer': null,
        'showCategory': null,
        'showType': null,
        'showTags': null,
        'useColors': null,
        'includeTags': null,
        'excludeTags': null,
        'colors': null,
        'colorSpectrum': null,
      };

      // Act
      final fromJson = LogOptions.fromJson(nullJson);

      // Assert
      expect(fromJson, LogOptions());
    });

    test('Encode and decode using jsonEncode and jsonDecode', () {
      // Arrange
      final originalOptions = LogOptions(
        showLogs: false,
        level: Level.debug,
        showEmoji: false,
        showLayer: true,
        showCategory: true,
        showType: false,
        showTags: true,
        includeTags: {'tag1', 'tag2'},
        excludeTags: {'tag3'},
        colors: {'info': 32, 'error': 31},
        colorSpectrum: 'category',
      );

      // Act
      final jsonString = jsonEncode(originalOptions);
      final decodedOptions = LogOptions.fromJson(jsonDecode(jsonString));

      // Assert
      expect(decodedOptions, equals(originalOptions));
    });
  });
}
