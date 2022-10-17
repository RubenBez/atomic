import 'dart:convert';

import 'package:atomic/utils/cast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../utils/logger.dart';

const bool kProdMode = bool.fromEnvironment("production");
const bool kDevMode = !bool.fromEnvironment("production");

class ConfigParser {
  late Map<String, dynamic> _configMap;

  ConfigParser._(Map<String, dynamic> configMap) {
    _configMap = configMap;
  }

  static Future<ConfigParser> fromFile(String file) async {
    final configMap = <String, dynamic>{};

    try {
      final content = await rootBundle.loadString(file);
      configMap.addAll(jsonDecode(content));
    } on FlutterError catch (e) {
      log.e("Unable to load config file: $file", e);
    }

    return ConfigParser._(configMap);
  }

  bool? getBool(String name) {
    if (!_configMap.containsKey(name)) {
      return null;
    }
    return cast<bool>(_configMap[name]);
  }

  double? getDouble(String name) {
    if (!_configMap.containsKey(name)) {
      return null;
    }
    return cast<double>(_configMap[name]);
  }

  int? getInt(String name) {
    if (!_configMap.containsKey(name)) {
      return null;
    }
    return cast<int>(_configMap[name]);
  }

  String? getString(String name) {
    if (!_configMap.containsKey(name)) {
      return null;
    }
    return cast<String>(_configMap[name]);
  }
}
