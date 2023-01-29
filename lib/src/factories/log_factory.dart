part of '../ddd_logger.dart';

abstract class LogFactory {
  // Used this for logs before LogConfig initialisation
  // This logger does not obey any filter rules in the configuration and will show up regardless of the configuration
  static Logger root<T>([Set<String> tags = const {}]) => Logger(printer: RootLogPrinter<T>(), level: Level.verbose);

  static Logger create<T>({required LogLayer layer, required LogCategory category, Set<String> tags = const {}}) {
    return Logger(
      printer:
          LogPrinterFactory.spectrum<T>(spectrum: LogConfig.instance.color.spectrum, layer: layer, category: category),
      filter: DddLoggerFilter<T>(layer: layer, category: category, tags: tags),
      level: LogConfig.instance.filter.level,
    );
  }

  static const CommonLayerFactory common = CommonLayerFactory();
  static const DomainLayerFactory domain = DomainLayerFactory();
  static const ApplicationLayerFactory application = ApplicationLayerFactory();
  static const PresentationLayerFactory presentation = PresentationLayerFactory();
  static const InfrastructureLayerFactory infrastructure = InfrastructureLayerFactory();
}

class CommonLayerFactory {
  const CommonLayerFactory();

  Logger value<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.common, category: LogCategory.value, tags: tags);
  }

  Logger model<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.common, category: LogCategory.model, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.common, category: LogCategory.util, tags: tags);
  }
}

class DomainLayerFactory {
  const DomainLayerFactory();

  Logger entity<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.domain, category: LogCategory.entity, tags: tags);
  }

  Logger value<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.domain, category: LogCategory.value, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.domain, category: LogCategory.util, tags: tags);
  }
}

class ApplicationLayerFactory {
  const ApplicationLayerFactory();

  Logger model<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.application, category: LogCategory.model, tags: tags);
  }

  Logger repo<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.application, category: LogCategory.repo, tags: tags);
  }

  Logger service<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.application, category: LogCategory.service, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.application, category: LogCategory.util, tags: tags);
  }
}

class PresentationLayerFactory {
  const PresentationLayerFactory();

  Logger viewModel<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.presentation, category: LogCategory.viewModel, tags: tags);
  }

  Logger controller<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.presentation, category: LogCategory.controller, tags: tags);
  }

  Logger view<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.presentation, category: LogCategory.view, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.presentation, category: LogCategory.util, tags: tags);
  }
}

class InfrastructureLayerFactory {
  const InfrastructureLayerFactory();

  Logger model<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.infrastructure, category: LogCategory.model, tags: tags);
  }

  Logger mapper<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.infrastructure, category: LogCategory.mapper, tags: tags);
  }

  Logger repo<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.infrastructure, category: LogCategory.repo, tags: tags);
  }

  Logger service<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.application, category: LogCategory.service, tags: tags);
  }

  Logger util<T>([Set<String> tags = const {}]) {
    return LogFactory.create<T>(layer: LogLayer.infrastructure, category: LogCategory.util, tags: tags);
  }
}
