import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin SecureStorage {
  final secureStorage = const FlutterSecureStorage(
    iOptions: IOSOptions(),
    aOptions: AndroidOptions(),
  );

  Future<String?> getEncryptedString({
    required String key,
  }) {
    return secureStorage.read(key: key);
  }

  Future<void> setEncryptedString({
    required String key,
    required String? value,
  }) {
    return secureStorage.write(key: key, value: value);
  }
}
