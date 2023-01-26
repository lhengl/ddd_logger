part of '../ddd_logger.dart';

enum LogCategory {
  // common
  repo,
  service,
  util,

  // domain categories
  entity,
  value,

  // presentation categories
  controller,
  view,
  viewModel,

  // infrastructure
  mapper,
  model,
}
