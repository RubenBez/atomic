abstract class Preferences {
  Future<String?> get username;
  Future<void> setUsername(String? username);
}