import 'package:flutter/material.dart';
import 'package:{{{fullPath}}}/widgets/{{feature_name.snakeCase()}}_body.dart';

/// {@template {{feature_name.snakeCase()}}_page}
/// A description for {{feature_name.pascalCase()}}Page
/// {@endtemplate}
class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_page}
  const {{feature_name.pascalCase()}}Page({super.key});
 {{#isRiverpod}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{feature_name.pascalCase()}}View(),
    );
  } {{/isRiverpod}} {{#isNone}}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: {{feature_name.pascalCase()}}View(),
    );
  } {{/isNone}}
}

/// {@template {{feature_name.snakeCase()}}_view}
/// Displays the Body of {{feature_name.pascalCase()}}View
/// {@endtemplate}
class {{feature_name.pascalCase()}}View extends StatelessWidget {
  /// {@macro {{feature_name.snakeCase()}}_view}
  const {{feature_name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return const {{feature_name.pascalCase()}}Body();
  }
}
