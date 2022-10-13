import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider =
    StateProvider.autoDispose<AuthRepository>((ref) => AuthRepository(ref.read(authStateNotifier)));

class AuthRepository {
  final AuthStateNotifier _authStateNotifier;

  AuthRepository(this._authStateNotifier);

  void logout() {
    _authStateNotifier.logout();
  }

  void login() {
    _authStateNotifier.signInWithEmailPassword("email", "password");
  }
}
