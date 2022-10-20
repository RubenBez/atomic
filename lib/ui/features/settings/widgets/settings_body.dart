import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:atomic/ui/features/settings/view_model/settings_view_model.dart';

/// {@template settings_body}
/// Body of the SettingsPage.
///
/// Add what it does
/// {@endtemplate}
class SettingsBody extends ConsumerWidget {
  /// {@macro settings_body}
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(settingsViewModelProvider);
    return const Center(child:Text('SettingsPage'));
  }
}
