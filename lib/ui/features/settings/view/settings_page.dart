import 'package:flutter/material.dart';
import 'package:atomic/ui/features/settings/widgets/settings_body.dart';

/// {@template settings_page}
/// A description for SettingsPage
/// {@endtemplate}
class SettingsPage extends StatelessWidget {
  /// {@macro settings_page}
  const SettingsPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SettingsView(),
    );
  }  
}

/// {@template settings_view}
/// Displays the Body of SettingsView
/// {@endtemplate}
class SettingsView extends StatelessWidget {
  /// {@macro settings_view}
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsBody();
  }
}
