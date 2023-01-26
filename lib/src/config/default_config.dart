part of '../ddd_logger.dart';

const Map<String, dynamic> _defaultConfig = {
  "showLogs": true,
  "spectrum": "layer",
  "display": {
    "showEmoji": true,
    "showLayer": false,
    "showCategory": false,
    "showType": true,
    "showTags": false
  },
  "filter": {
    "level": "verbose",
    "layers": [],
    "includeCategories": [],
    "excludeCategories": [],
    "includeTypes": [],
    "excludeTypes": [],
    "includeTags": [],
    "excludeTags": []
  },
  "color": {
    "spectrum": "layer",
    "byLayer": {
      "common": 11,
      "domain": 13,
      "application": 4,
      "infrastructure": 166,
      "presentation": 34
    },
    "byCategory": {
      "util": 11,
      "repo": 166,
      "service": 27,
      "controller": 4,
      "view": 34,
      "entity": 13,
      "value": 207,
      "viewModel": 135,
      "model": 5,
      "mapper": 208
    }
  }
};
