import 'package:atomic/domain/service/preferences/preferences_service.dart';
import 'package:atomic/data/preferences/secure_storage.dart';
import 'package:atomic/data/preferences/shared_preferences.dart';

enum _Preferences { username }

class PreferencesImpl extends Preferences with SharedPreferences, SecureStorage {
  @override
  Future<String?> get username =>
      getEncryptedString(key: _Preferences.username.name);

  @override
  Future<void> setUsername(String? username) =>
      setEncryptedString(key: _Preferences.username.name, value: username);
}
