import 'package:atomic/domain/view_model/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider =
    StateProvider.autoDispose<HomeViewModel>(HomeViewModel.new);

class HomeViewModel extends ViewModel {
  HomeViewModel(super.ref);
}
