import 'package:atomic/domain/view_model/view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final {{feature_name.camelCase()}}ViewModelProvider = StateProvider.autoDispose({{feature_name.pascalCase()}}ViewModel.new);

class {{feature_name.pascalCase()}}ViewModel extends ViewModel {
  {{feature_name.pascalCase()}}ViewModel(super.ref);
}
