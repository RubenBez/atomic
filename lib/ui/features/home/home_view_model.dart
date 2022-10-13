import 'package:atomic/domain/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = StateProvider.autoDispose<HomeViewModel>(
    (ref) => HomeViewModel());

class HomeViewModel {

}