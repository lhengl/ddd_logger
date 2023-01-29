part of '../ddd_logger.dart';

abstract class LogPrinterFactory {
  static DddLogPrinter spectrum<T>(
      {required LogColorSpectrum spectrum,
      required LogLayer layer,
      required LogCategory category,
      Set<String> tags = const {}}) {
    switch (spectrum) {
      case LogColorSpectrum.layer:
        return byLayer<T>(layer: layer, category: category, tags: tags);
      case LogColorSpectrum.category:
        return byCategory<T>(layer: layer, category: category, tags: tags);
    }
  }

  static DddLogPrinter byLayer<T>(
      {required LogLayer layer, required LogCategory category, Set<String> tags = const {}}) {
    switch (layer) {
      case LogLayer.common:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byLayer[LogLayer.common] ?? AnsiColors.yellow));
      case LogLayer.domain:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byLayer[LogLayer.domain] ?? AnsiColors.pink));
      case LogLayer.application:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byLayer[LogLayer.application] ?? AnsiColors.lightBlue));
      case LogLayer.infrastructure:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byLayer[LogLayer.infrastructure] ?? AnsiColors.orange));
      case LogLayer.presentation:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byLayer[LogLayer.presentation] ?? AnsiColors.green));
    }
  }

  static DddLogPrinter byCategory<T>(
      {required LogLayer layer, required LogCategory category, Set<String> tags = const {}}) {
    switch (category) {
      case LogCategory.repo:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.repo] ?? AnsiColors.orange));
      case LogCategory.service:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.service] ?? AnsiColors.blue));
      case LogCategory.util:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.util] ?? AnsiColors.yellow));
      case LogCategory.entity:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.entity] ?? AnsiColors.pink));
      case LogCategory.value:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.value] ?? AnsiColors.hotPink));
      case LogCategory.factory:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.factory] ??
                LogConfig.instance.color.byCategory[LogCategory.factory] ??
                AnsiColors.hotPink));
      case LogCategory.controller:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.controller] ?? AnsiColors.lightBlue));
      case LogCategory.view:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.view] ?? AnsiColors.green));
      case LogCategory.viewModel:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.viewModel] ?? AnsiColors.purple));
      case LogCategory.mapper:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.mapper] ?? AnsiColors.lightOrange));
      case LogCategory.model:
        return DddLogPrinter<T>(
            layer: layer,
            category: category,
            tags: tags,
            color: AnsiColor.fg(LogConfig.instance.color.byCategory[LogCategory.model] ?? AnsiColors.darkPurple));
    }
  }
}
