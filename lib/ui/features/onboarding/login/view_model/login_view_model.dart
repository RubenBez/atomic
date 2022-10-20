import 'package:atomic/domain/repository/auth_repository/repository.dart';
import 'package:atomic/domain/view_model/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginViewModelProvider =
    StateProvider.autoDispose<LoginViewModel>(LoginViewModel.new);

class LoginViewModel extends ViewModel {
  late final AuthRepository _authService;

  LoginViewModel(super.ref) {
    _authService = ref.read(authRepositoryProvider);
  }

  void login() {
    _authService.login();
  }
}
