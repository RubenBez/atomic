import 'package:atomic/domain/repository/auth/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginViewModelProvider = StateProvider.autoDispose<LoginViewModel>(
    (ref) => LoginViewModel(ref.read(authRepositoryProvider)));

class LoginViewModel {
  final AuthRepository _authService;

  LoginViewModel(this._authService);

  void login() {
    _authService.login();
  }
}
