import 'package:atomic/domain/repository/auth_repository/repository.dart';
import 'package:atomic/domain/view_model/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileViewModelProvider =
    StateProvider.autoDispose<ProfileViewModel>(ProfileViewModel.new);

class ProfileViewModel extends ViewModel {
  late final AuthRepository _authRepository;

  ProfileViewModel(super.ref) {
    _authRepository = ref.read(authRepositoryProvider);
  }

  void logout() {
    _authRepository.logout();
  }
}
