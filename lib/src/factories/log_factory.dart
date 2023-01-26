part of '../ddd_logger.dart';

abstract class LogFactory {
  // Used this for logs before LogConfig initialisation
  // This logger does not obey any filter rules in the configuration and will show up regardless of the configuration
  static Logger root<T>([Set<String> tags = const {}]) =>
      Logger(printer: RootLogPrinter<T>(), level: Level.verbose);

  static Logger create<T>(
      {required LogLayer layer,
      required LogCategory category,
      Set<String> tags = const {}}) {
    return Logger(
      printer: LogPrinterFactory.spectrum<T>(
          spectrum: LogConfig.instance.color.spectrum,
          layer: layer,
          category: category),
      filter: DddLoggerFilter<T>(layer: layer, category: category, tags: tags),
      level: LogConfig.instance.filter.level,
    );
  }

  static const LayerFactory common = LayerFactory(LogLayer.common);
  static const LayerFactory domain = LayerFactory(LogLayer.domain);
  static const LayerFactory application = LayerFactory(LogLayer.application);
  static const LayerFactory presentation = LayerFactory(LogLayer.presentation);
  static const LayerFactory infrastructure =
      LayerFactory(LogLayer.infrastructure);
}

class LayerFactory {
  final LogLayer layer;

  const LayerFactory(this.layer);

  Logger repo<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.repo, tags: tags);
  }

  Logger service<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.service, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.util, tags: tags);
  }

  Logger entity<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.entity, tags: tags);
  }

  Logger value<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.value, tags: tags);
  }

  Logger controller<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.controller, tags: tags);
  }

  Logger view<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.view, tags: tags);
  }

  Logger viewModel<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.viewModel, tags: tags);
  }

  Logger mapper<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.mapper, tags: tags);
  }

  Logger model<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(
        layer: layer, category: LogCategory.model, tags: tags);
  }
}
