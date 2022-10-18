import 'package:atomic/utils/max_int.dart';
import 'package:atomic/utils/scope_functions.dart';
import 'package:shared_preferences/shared_preferences.dart'
    as flutter_shared_preferences;

mixin SharedPreferences {
  Future<flutter_shared_preferences.SharedPreferences> get storage =>
      flutter_shared_preferences.SharedPreferences.getInstance();

  Future<String?> getString({
    required String key,
  }) async {
    final value = (await storage).getString(key);
    return value?.takeUnless((it) => it.isEmpty);
  }

  Future<void> setString({
    required String key,
    required String? value,
  }) async {
    await (await storage).setString(key, value ?? '');
  }

  Future<int?> getInt({
    required String key,
  }) async {
    final value = (await storage).getInt(key);

    return value?.takeUnless((it) => it == maxInt);
  }

  Future<void> setInt({
    required String key,
    required int? value,
  }) async {
    await (await storage).setInt(key, value ?? maxInt);
  }

  Future<double?> getDouble({
    required String key,
  }) async {
    final value = (await storage).getDouble(key);
    return value?.takeUnless((it) => it == double.infinity);
  }

  Future<void> setDouble({
    required String key,
    required double? value,
  }) async {
    await (await storage).setDouble(key, value ?? double.infinity);
  }
}
