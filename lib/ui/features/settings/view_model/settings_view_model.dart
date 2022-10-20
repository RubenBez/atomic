import 'package:atomic/domain/view_model/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final settingsViewModelProvider = StateProvider.autoDispose(SettingsViewModel.new);

class SettingsViewModel extends ViewModel {
  SettingsViewModel(super.ref);
}
