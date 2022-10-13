
import 'package:atomic/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final profileViewModelProvider = StateProvider.autoDispose<ProfileViewModel>(
        (ref) => ProfileViewModel(ref.read(authRepositoryProvider)));

class ProfileViewModel {
  final AuthRepository authRepository;

  ProfileViewModel(this.authRepository);

  void logout() {
    authRepository.logout();
  }

}