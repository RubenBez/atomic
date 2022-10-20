import 'package:atomic/domain/providers/auth_state_notifier.dart';
import 'package:atomic/domain/repository/auth_repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthStateNotifier _authStateNotifier;

  AuthRepositoryImpl(this._authStateNotifier);

  @override
  void logout() {
    _authStateNotifier.logout();
  }

  @override
  void login() {
    _authStateNotifier.signInWithEmailPassword("email", "password");
  }
}
