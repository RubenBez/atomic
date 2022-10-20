import 'package:flutter/material.dart';{{#isRiverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:{{{fullPath}}}/view_model/{{feature_name.snakeCase()}}_view_model.dart';{{/isRiverpod}}

/// {@template {{feature_name.snakeCase()}}_body}
/// Body of the {{feature_name.pascalCase()}}Page.
///
/// Add what it does
/// {@endtemplate}
class {{feature_name.pascalCase()}}Body {{#isNone}}extends StatelessWidget{{/isNone}}{{#isRiverpod}}extends ConsumerWidget{{/isRiverpod}} {
  /// {@macro {{feature_name.snakeCase()}}_body}
  const {{feature_name.pascalCase()}}Body({super.key});
{{#isRiverpod}}
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read({{feature_name.camelCase()}}ViewModelProvider);
    return const Center(child:Text('{{feature_name.pascalCase()}}Page'));
  }{{/isRiverpod}}{{#isNone}}
  @override
  Widget build(BuildContext context) {
    return const Center(child:Text('{{feature_name.pascalCase()}}Page'));
  }{{/isNone}}
}
